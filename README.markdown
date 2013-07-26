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

    git clone git@github.com:sharipov-ru/vimbundle.git ~/.vim

Create symlinks for .vimrc and .gvimrc:

    ln -s ~/.vim/.vimrc ~/.vimrc
    ln -s ~/.vim/.gvimrc ~/.gvimrc

Open vim/mvim/gvim and execute comand:

    :BundleInstall

Enjoy!

### TODO

* Refactor and clean .vimrc
