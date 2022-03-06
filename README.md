# Dotfiles
my config files

# VIM
do these steps:

	0: git clone https://github.com/am-shm/dotfiles.git
	1: cd dotfiles
	2: cp -r vim/vim ~/.vim
	3: cp vim/vimrc ~/.vimrc 
	4: open vim and type :PluginInstall and wait till plugins setup
	5: star the repository T_T

# I3
do these steps:
	
	0: git clone https://github.com/am-shm/dotfiles.git
	1: cd dotfiles
	2: cp config ~/.config/i3 
	3: copy executables file to $PATH [like /usr/local/bin/]

# QUTEBROWSER
just :
	
	0: git clone https://github.com/am-shm/dotfiles.git
	1: cd dotfiles
	2: mv ~/.config/qutebrowser/config.py ~/.config/qutebrowser/config.py.old
	2: cp ./qutebrowser/config.py ~/.config/qutebrowser/config.py
	3: restart qutebrowser
