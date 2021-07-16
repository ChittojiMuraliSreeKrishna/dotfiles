# Notification Manager {dunst}
## Install dunst && Create folder for dunst
```bash
sudo pacman -S dunst
mkdir ~/.config/dunst/
```
## Copying Default Config to .config
```bash
cp /usr/share/dunst/dunstrc ~/.config/dunst/dunstrc
```

# Fish Shell
## install fish
```bash 
sudo pacman -S fish
```
## Changing Shell
```bash
fish
chsh /usr/bin/fish
```
## Configure Fish Shell
```bash
fish_config
```

# i3wm
## To install i3
```bash
sudo pacman -S i3
```
## Config for i3 will be present in ~/.config/i3/config or ~/.i3/config

# qtile
```bash
sudo pacman -S qtile
```
# neovim
```bash
sudo pacman -S neovim
```
## to change the nvim to vim command
```bash
ln -s (which nvim) /usr/locale/bin/vim
```
