## AstralMortem Hyprland Dotfiles


## DESKTOP Dependencies
#### Pacman

`sudo pacman -S hyprland xdg-desktop-portal-hyprland waybar kitty cava  polkit-gnome gnome-keyring wofi swaync swww starship playerctl pavucontrol btop qt5-base qt5-wayland qt6-base qt6-wayland lsd cliphist geany bat sddm --needed`

### Yay
`yay -S hyprpicker-git swaylock-effects wl-clipboard light nemo bulky boo-sddm boo-grub --needed`

### Themes, Icons, Cursors
`git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git & cd Tokyo-Night-GTK-Theme`

install theme
`bash theme/install.sh -l -t purple --tweaks moon`

install icons
`sudo cp -r icons/Tokyonight-Moon /usr/share/icons/`

download Cursors
`git clone https://github.com/EliverLara/Sweet.git -b nova`

install Cursors
`sudo cp -r kde/cursors/Sweet-cursors /usr/share/icons/`

---

#### grub
`sudo nano /etc/default/grub`

change #GRUB_THEME= to GRUB_THEME="/usr/share/grub/themes/boo/theme.txt"

`sudo grub-mkconfig -o /boot/grub/grub.cfg`

#### sddm
`sudo nano /etc/sddm.conf`

change lines
>[Theme]
>
>Current=boo