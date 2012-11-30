# Super Awesome OSX Settings

This repository contains my ZSH, Bash, iTerm and [Super Awesome Vim settings](https://github.com/kevintuhumury/vim-settings). The last is included as a submodule.

The features included are among others:

* Colored prompt for both ZSH and Bash.
* Automatic project aliases.
* Ruby on Rails specific aliases.
* RVM support.
* Vim configuration (as a submodule).

## Installation

Run the following to install the OSX settings:

    git clone git://github.com/kevintuhumury/osx-settings.git ~/.osx-settings
    cd ~/.osx-settings
    ./install

The installation will create a backup of a previous version and symlinks the available dot files.

### Configure Git

Run the following to configure Git:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

## Upgrading

To get the latest version:

    cd ~/.osx-settings
    git pull origin master
    ./update-submodules

This will also update all of the Vim plugins (through Pathogen). If you've customized anything, get ready to start your rebase.

## Customizing

### Project aliases

This scripts adds aliases for your project directories, but you'll have to tell it where your projects can be found.

Depending on which shell you use, create `bash/98_project_dirs.sh` or `zsh/98_project_dirs.zsh`.

If you're using bash, edit `.bashrc` and add something like:

    PROJECT_PARENT_DIRS[0]="$HOME/code"

If you're using zsh, edit `.zshrc` and add something like:

    PROJECT_PARENT_DIRS+=("$HOME/code")

Add as many directories as you like.

### iTerm2

In the iTerm2 general settings, check `Load preferences from a user-defined folder or URL`. Fill in the text field to point to `/Users/your_name/.osx-settings/iterm2`. You might need to restart iTerm2 after that.

### Terminal

If you have trouble reading the colors, enable `Use bright colors for bold text` in Terminal. Don't forget to select the theme included in the iTerm2 directory.

### Homebrew

Here's what I install on a clean OSX:

```
brew install ack imagemagick readline wget libyaml mysql zsh node sqlite memcached postgresql tree elasticsearch
```

Make sure to read the caveats of those packages to make them start up automatically when that makes sense.

### Hitch

I use [Hitch](https://github.com/therubymug/hitch) for Pair Programming and also use RVM. So, after installing the rubies I want, I run:

    for x in $(rvm list strings); do rvm use $x@global && gem install hitch && gem install bundler; done

## Credits

This is heavily inspired by others, but mostly by [@iain](https://github.com/iain).
