# For tips and tricks, use `strings /dev/random`
# made by @paulo-e or @pauloe

echo "Installing..."

# creating (sanely) a user
echo "What is your user name? "
read name
sudo useradd $name -m -G wheel
su - $name

# creating default folders
echo "Creating default folders..."
cd $HOME
mkdir downloads images videos documents projects git

# install pacman packages
cat ~/.dotfiles/.files/pacman | xargs doas pacman -S --needed --noconfirm
cat ~/.dotfiles/.files/yay | xargs doas yay -S

# set zsh as login shell
chsh -s $(which zsh)
