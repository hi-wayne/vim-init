# /bin/sh

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/hi-wayne/ohmyzsh/master/tools/install.sh)"



#install tmux
brew install tmux

#install vim
brew install python3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
brew install neovim
pip install pynvim
mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
cp nvim_init.vim ~/.config/nvim/init.vim

#install ctagc
brew install ctags-exuberant

rm -rf ~/.vimrc
rm -rf ~/.tmux.conf
rm -rf ~/.tmux.conf.local

cp .vimrc  ~/.vimrc
cp .tmux.conf  ~/.tmux.conf
cp .tmux.conf.local  ~/.tmux.conf.local

# install powerline
cd /tmp
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
./powerline.sh


#install vim theme
cd /tmp
git clone https://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized/colors ~/.vim/
rm -rf vim-colors-solarized

#clean tmux vim config


#install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
