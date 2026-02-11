# dotfiles

My configuration files

## Environment

macOS Mojave

## Usage

### macOS (my personal setup)

#### vim + zsh + tmux + vifm + iterm2

```shell
$ xcode-select --install
$ mkdir Github; cd Github
$ git clone --recurse-submodules git@github.com:Nightlord851108/dotfiles.git; cd dotfiles
$ ./deploy.sh all
# add /usr/local/bin/zsh to /etc/shells
$ chsh -s /usr/local/bin/zsh
# If plugins of vim are not installed, please execute the following command.
$ vim +PlugInstall +qall
```

#### iTerm2

- Load iTerm2 settings: `Preferences...` => `General` => `Load preferences from a custom folder or URL`

#### Atom

1. Deploy atom

```
$ ./deploy.sh atom
```

2. Check 'Security & Privacy' of you mac to allow open the installed Atom app

3. Deploy atom packages

```
$ ./deploy.sh atom_pkg
```


### Vim/Zsh/Tmux only

If you just want to install vim, zsh, or tmux specifically, you can check out README files in the corresponding directory.
