# Dotfiles

if you mess up your dotfiles, don't worry, you can copy _up-to-date_ files anytime from here.

## Setup Dotfiles

All the settings described in this guide are backed into following dot(.) files

> copy `zshrc`, `alias` etc., files to your home directory to make life easy.

to finish this task, run the following commands in terminal:

```shell
# go to your home directory
cd ~
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/.zshrc -o ~/.zshrc
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/.gitconfig -o ~/.gitconfig
git config --global user.name "Sun Sreng"
git config --global user.email "sun_sreng@hotmail.com"
mkdir ~/my && cd ~/my
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/.gitattributes -o ~/my/.gitattributes
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/.gitignore -o ~/my/.gitignore
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/aliases.zsh -o ~/my/aliases.zsh
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/exports.zsh -o ~/my/exports.zsh
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/extra.zsh -o ~/my/extra.zsh
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/functions.zsh -o ~/my/functions.zsh
curl -L https://raw.githubusercontent.com/sun-sreng/sun-sreng/main/my/paths.zsh -o ~/my/paths.zsh
```

> If you want to add **paths** or **exports** use respective files in `~/my` folder instead of editing `~/.zshrc`
