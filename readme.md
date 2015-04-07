# Makenova's dotfiles.

This repo contains my personal dotfiles and are heavily based on [Addy Osmani's](https://github.com/addyosmani/dotfiles/) dotfiles.  
I'm still working on claiming these files so there is still alot of dust that isn't mine.

## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`

#### manual run
* `install-deps.sh` - random apps
* `.osx` - osx defaults
* `.brew` - homebrew intialization

#### git
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline

## Installation

```bash
git clone https://github.com/makenova/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
