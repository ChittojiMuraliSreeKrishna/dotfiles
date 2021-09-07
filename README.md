# i3wm
![screenchot1](https://user-images.githubusercontent.com/62329524/118088656-e7d75200-b3b6-11eb-9916-621e6a9c2595.png)

## Apps I've Use
```bash
# feh -- setting wallpapers
sudo pacman -S nitrogen
# chrome -- browser
paru -S google-chrome
# nemo -- file manager
sudo pacman -S thunar
# terminator -- terminal
sudo pacman -S alacritty
# vscode/vim -- text-editor
paru -S visual-studio-code
# vlc -- video player
sudo pacman -S vlc
# libreoffice -- office
sudo pacman -S libreoffice
# vim  -- terminal-Texteditor
sudo pacman -S neovim
# Font-Awesome -- icons
sudo pacman -S ttf-font-awesome
```

## App icons on bar
```bash
# clipit -- clipboard
paru -S clipit
# volumeicon -- volume options
sudo pacman -S volumeicon
# network-manager-applet -- network options
sudo pacman -S network-manager-applet
# power manager
sudo pacman -S mate-power-manager
```

## Lock-screen
> i am using i3lock which comes standard in arch

## Volume
> i am using alsa 
```bash
sudo pacman -S alsa-utils
```
## Brightness
> i have intel_backlight so i am using light
```bash
sudo pacman -S light
```
## AppMenu
```bash
sudo pacman -S rofi
rofi -show drun 
```
# bar 
> status_command i3blocks -c ~/.i3/i3blocks.conf

# XF86 HOT Keys
## Volume Keys
```bash
XF86AudioRaiseVolume
XF86AudioLowerVolume
XF86AudioMute
```
## brightness Keys
```bash
XF86MonBrightnessUp
XF86MonBrightnessDown
```
## Audio Keys
```bash
XF86AudioPlay
XF86AudioNext
XF86AudioPrev
```

# to enable tap to touch
>/usr/share/X11/xorg.conf.d/90-touchpad.conf
