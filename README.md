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
$ git clone https://github.com/gantheory/dotfiles.git; cd dotfiles
$ ./deploy.sh all
# add /usr/local/bin/zsh to /etc/shells
$ chsh -s /usr/local/bin/zsh
# If plugins of vim are not installed, please execute the following command.
$ vim +PlugInstall +qall
```

#### iTerm2

- Load iTerm2 settings: `Preferences...` => `General` => `Load preferences from a custom folder or URL`

#### Atom

- Link ~/.atom to atom config directory

```shell
$ ln -sn ~/Github/dotfiles/atom/atom.symlink ~/.atom
```

### Vim/Zsh/Tmux only

If you just want to install vim, zsh, or tmux specifically, you can check out README files in the corresponding directory.
