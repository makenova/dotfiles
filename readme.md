# Makenova's dotfiles.

This repo contains my personal dotfiles and are heavily based on [Addy Osmani's](https://github.com/addyosmani/dotfiles/) dotfiles.  
I'm still working on claiming these files so there is still alot of dust that isn't mine.

## Syntax highlighting

…is really important. even for these files.

add the xml tags below to this file: `~/Library/Application Support/Sublime Text 2/Packages/ShellScript/Shell-Unix-Generic.tmLanguage`

In ST3: `/Applications/Sublime\ Text.app/Contents/MacOS/Packages/ShellScript.sublime-package/Shell-Unix-Generic.tmLanguage`

You will need to rename the ShellScript.sublime-package to ShellScript.sublime-package.zip, uncompress it, make your changes, recompress it and then rename it to the .sublime-package extension. Those are the steps I took, hopefully someone else can find a better way.

```xml
<string>.aliases</string>
<string>.bash_profile</string>
<string>.bash_prompt</string>
<string>.bashrc</string>
<string>.brew</string>
<string>.exports</string>
<string>.functions</string>
<string>.git</string>
<string>.gitattributes</string>
<string>.gitconfig</string>
<string>.gitignore</string>
<string>.inputrc</string>
<string>.osx</string>
<string>.vim</string>
<string>.vimrc</string>
```



### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## Similar projects

I recommend getting a [`.jshintrc`](https://github.com/jshint/node-jshint/blob/master/.jshintrc) and [`.editorconfig`](http://editorconfig.org/) defined for all your projects.





## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization

#### git, brah
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
