# Install yaourt

mkdir temp
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
tar -xvzf package-query.tar.gz
cd package-query
makepkg -si
cd ..
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar -xvzf yaourt.tar.gz
cd yaourt
makepkg -si
cd ..
rm -R temp

# Install required programs

sudo pacman -S ttf-inconsolata compton wicd wicd-gtk scrot
yaourt -S i3-gaps
yaourt -S ttf-font-awesome
yaourt -S polybar-git
