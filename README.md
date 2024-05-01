# ARCH LINUX AstralMortem .dotfiles

Run arch live iso, and setup ethernet throught iwctl, after success run commands

```
sudo pacman -S git & git clone https://github.com/AstralMortem/dotfiles.git
```

### Install ArchLinux

```
cd dotfiles/archinstall
archinstall --config user_configuration.json --creds user_credentials.json
```

After success installing, go in arch-chroot

### Install yay

```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## Install Hyprland & Waybar

