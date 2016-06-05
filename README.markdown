# Vimbundle for ninjas

I'm not trying to build the cleanest and the most powerful vim bundle
you've ever seen, this bundle is just my own vision of proper vim setup
for ruby developers.

### Installation
Create backup of your old vimfiles:

    mv ~/.vimrc ~/.vimrc_backup
    mv ~/.vim ~/.vim_backup
    mv ~/.gvimrc ~/.gvimrc_backup

Clone this repository to ``.vim`` directory of your homedir:

    git clone https://github.com/sharipov-ru/vimbundle.git ~/.vim

Create symlinks for .vimrc and .gvimrc:

    ln -s ~/.vim/.vimrc ~/.vimrc
    ln -s ~/.vim/.gvimrc ~/.gvimrc
    
Install plugin manager:

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Open vim/mvim/gvim and execute comand:

    :BundleInstall

Also follow installation guides for vim plugins:

[ack](https://github.com/mileszs/ack.vim)

Enjoy!

### TODO

* Refactor and clean .vimrc
