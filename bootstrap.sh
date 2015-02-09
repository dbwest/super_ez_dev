sudo apt-get -y update
sudo apt-get -y install make git wget libx11-dev libxt-dev python python2.7-dev ctags zsh mercurial
hg clone https://vim.googlecode.com/hg/ vim_source && cd vim_source && \\n./configure --disable-nls --enable-multibyte \\n--enable-pythoninterp --enable-rubyinterp --with-features=huge && \\nmake -j 3 && sudo make install
git clone git://github.com/thoughtbot/dotfiles.git
wget https://thoughtbot.github.io/rcm/debs/rcm_1.2.3-1_all.deb && sudo dpkg -i rcm_1.2.3-1_all.deb
env RCRC=$HOME/dotfiles/rcrc rcup
sudo apt-get -y install tmux

