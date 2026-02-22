# dotfiles

My configuration files

## Environment

MacOS Tahoe

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

### Git Submodules

#### Get the content of submodules

1. Pull this repo:

    ```bash
    $ git pull
    ```

2. Update submodule:

    ```bash
    $ git submodule update --init --recursive
    ```

#### Commit the content of submodules

```bash
$ cd ${Sub_Module}   # cd in to the submodule directory
$ git checkout master    # For a newly cloned project, we need to checkout the master branch before commit
$ git add ${Changed_files}
$ git commit
$ git push origin master
$ cd ..    # cd back to the main module
$ git add ${Sub_Module}    # Update the commit pointer to the submodule in the main module git
$ git commit
$ git push
```
