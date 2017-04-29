# vimrc
My .vim folder, so I don't have to copy and paste changes between systems.

# Installation
Follow below

```bash
$ git clone https://github.com/henxing/vimrc.git ~/.vim
Cloning into '.vim'...
remote: Counting objects: 37, done.
remote: Total 37 (delta 0), reused 0 (delta 0), pack-reused 37
Unpacking objects: 100% (37/37), done.
```

## For versions of Vim older than 7.4
In 7.4 and newer, Vim looks in both .vimrc and .vim/vimrc for your vimrc file.
If you are using an old version, do this:

```bash
$ echo "runtime vimrc" > .vimrc
```

