# Install instructions

## Get yay
```
sudo pacman -S git
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R sec-box:sec-box ./yay-git
cd yay-git
makepkg -si
yay -Syu
```
## Clone this repo
```
git clone https://github.com/WillemMe/dotfiles.git
cd dotfiles
```

## Install packages
```
yay -S --needed - < .config/packageslist.txt
```

## Install rust packages
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
cargo install exa bat du-dust zoxide 
```

## Install dotfiles
```
cp -r .config/* ~/.config/
```

## Install vim plugins
```
nvim +PlugInstall +qall
```

## Install fonts
Download and install in to `~/.local/share/fonts/`
- [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip)
- [Material Design Icons](https://github.com/google/material-design-icons/tree/master/variablefont)
- [Product Sans](https://github.com/iamverysimp1e/fonts/raw/master/product-sans.zip)
