# .vimrc

## create new directory 
```bash
 mkdir  ~/.vim/undodir -p
 ```

## for plugins first download
``` bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
    
### to begin with plugins
```vim
call plug#begin('~/.vim/plugged')
# plugins goes here
call plug#begin('~/.vim/plugged')
```

## to find plugins
> https://vimawesome.com/

# i3
> sudo pacman -S i3 -- for arch
## i3 default config page
```bash
 vim ~/.config/i3/config
```
