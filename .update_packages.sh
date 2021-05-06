# pacman
#pacman -Qqe > ~/.dotfiles/.lists/dump
#comm -12 <(pacman -Slq | sort) <(sort ~/.dotfiles/.lists/dump) > ~/.dotfiles/.lists/pacman
#rm ~/.dotfiles/.lists/dump
pacman -Qqe | grep -v "$(pacman -Qqm)" > ~/.dotfiles/.lists/pacman

# yay
pacman -Qqm > ~/.dotfiles/.lists/yay
