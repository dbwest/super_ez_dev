sudo apt-get -y update
sudo apt-get -y install make git wget libx11-dev libxt-dev python python2.7-dev ctags zsh mercurial
hg clone http://vim.googlecode.com/hg/ vim_source && cd vim_source && ./configure --disable-nls --enable-multibyte --enable-pythoninterp --enable-rubyinterp --with-features=huge && make -j 3 && sudo make install
git clone http://github.com/thoughtbot/dotfiles.git
wget https://thoughtbot.github.io/rcm/debs/rcm_1.2.3-1_all.deb && sudo dpkg -i rcm_1.2.3-1_all.deb
env RCRC=$HOME/dotfiles/rcrc rcup
sudo apt-get -y install tmux

