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

## Install fish shell
```
sudo pacman -S fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
chsh
```

## Install Hyprland & Waybar

Desktop depends pacman
```
sudo pacman -S hyprland hyprpaper hyprlock hypridle nemo xdg-desktop-portal-hyprland cava kitty wofi starship wl-clipboard swww swaync playerctl pavucontrol btop qt5-base qt5-wayland qt6-base qt6-wayland lsd geany bat cliphist polkit-gnome wlogout sddm network-manager-applet blueman yad plymouth
```

AUR
```
yay -S waybar-git pokemon-colorscripts-git hyprpicker-git wlogout boo-grub-git boo-sddm-git proxzima-plymouth-git libinput-gestures light system76-power --needed
```

## Setup sddm,grub,plymouth

### Grub
Edit grub config file
```
sudo nano /etc/default/grub
```
change #GRUB_THEME= to GRUB_THEME="/usr/share/grub/themes/boo/theme.txt"

Update grub using
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

### SDDM

```
sudo nano /etc/sddm.conf
```
Make the following changes

```
[Theme]
Current=boo
```

### plymouth

```
sudo plymouth-set-default-theme -R proxzima
```

## DOTFILES

```
cd ~/dotfiles
cp -r .config .icons .local .scripts .themes .wallpapers ~/
cp .face .fonts.conf .dmrc .gtkrc-2.0 ~/
chmod -R +x ~/.scripts/
chmod +x ~/.config/hypr/autostart
chmod -R +x ~/.config/wlogout/
```

## Extra apps

```
yay -S google-chrome visual-studio-code-bin libreoffice-fresh ark spotify 