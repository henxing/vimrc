# vimrc
My .vim folder, so I don't have to copy and paste changes between systems.

# Installation
Run the following commands, making sure no errors show up in the output

```bash
$ git clone https://github.com/henxing/vimrc.git ~/.vim
$ cd ~/.vim/bundle
$ git submodule init
$ git submodule update
$ cd -
```

## For versions of Vim older than 7.4
In 7.4 and newer, Vim looks in both .vimrc and .vim/vimrc for your vimrc file.
If you are using an old version, do this:

```bash
$ echo "runtime vimrc" > ~/.vimrc
```

