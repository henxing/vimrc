# vimrc
My .vim folder, so I don't have to copy and paste changes between systems.

# Installation
Run the following commands, making sure no errors show up in the output

```bash
$ git clone https://github.com/henxing/vimrc.git ~/.vim
$ vim ~/.vim/vimrc
# Wait for vim-plug to install all plugins
$ cd ~/.vim/vimrc/YouCompleteMe
$ ./install.sh --clang-complete
# Wait for YouCompleteMe to compile
$ cd -
```

## For versions of Vim older than 7.4
In 7.4 and newer, Vim looks in both .vimrc and .vim/vimrc for your vimrc file.
If you are using an old version, do this:

```bash
$ echo "runtime vimrc" > ~/.vimrc
```

