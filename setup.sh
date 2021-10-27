#!/bin/bash
echo "Select your window manager:"
echo "1.i3wm"
echo "2.qtile"
echo "3.bspwm"
echo "1,2,3"
read WM

if [[ ${WM} =~ "1" ]]; then
    echo "you have selected i3wm"
    sudo pacman -S i3 acpi light --noconfirm --needed
    cp -r ./WindowManagers/i3/* ~/.config/
elif [[ ${WM} =~ "2" ]]; then
    echo "you have selected qtile"
    sudo pacman -S qtile --noconfirm --needed
    cp -r ./WindowManagers/qtile ~/.config/
elif [[ ${WM} =~ "3" ]]; then
    echo "you have selected bspwm"
    sudo pacman -S bspwm polybar --noconfirm --needed
    cp -r ./WindowManagers/bspwm ~/.config
    cp -r ./WindowManagers/sxhkd ~/.config
else
    echo "please select one from given options "
fi

echo "\nMaking Directories\n"
mkdir -p $HOME/.config/
mkdir -p $HOME/.moc

echo "\nCopying files\n"
cp -r ./.config/* ~/.config/
cp -r ./.moc/* ~/.moc/
cp -r ./.bashrc ~/
cp -r ./.xinitrc ~/
sudo cp -r ./90-touchpad.conf /usr/share/X11/xorg.conf.d/

echo -e "\nInstalling required apps\n"
sudo pacman -Sy --noconfirm

PKGS=(
    'alacritty'
    'alsa-utils'
    'code'
    'dunst'
    'mocp'
    'neovim'
    'nitrogen'
    'picom'
    'pcmanfm'
    'rofi'
    'vlc'
    )

for PKG in "${PKGS[@]}"; do
    echo "Installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "\nInstalling AUR Helper\n"
mkdir -p ~/Public/
git clone https://aur.archlinux.org/paru-git/
cd ~/Public/paru-git/
sudo makepkg -si

paru -S google-chrome --noconfirm

echo "Finished..."

