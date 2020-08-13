#first install oh-my-sh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#second, add plugin and theme
plugins=(git archlinux autojump direnv thefuck cp zsh-autosuggestions history-substring-search)
sed -i 's/^plugins.*/plugins=('"$plugins"')/g' ~/.zshrc
sed -i 's/^ZSH_THEME.*/ZSH_THEME="af-magic"/g' ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
pip install thefuck --user
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
cd ..
rm -rf autojump
