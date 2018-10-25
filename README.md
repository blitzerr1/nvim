If you are installing neo-vim for the first time on your machine, make sure
you have already done these:
1. Install VimPlug using this command:
        curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	or as mentioned in the instructions here:
		https://github.com/junegunn/vim-plug#neovim

2. Have python3 and pip3 installed (or python2 and pip2 installed). If not you
   can always use:
	brew install python3

3. Install the python for neovim as mentioned here:
	https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim

4. Open neovim or vimR and then run:
	PlugInstall
   From vim command interface
