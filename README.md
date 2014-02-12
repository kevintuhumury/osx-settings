# Super Awesome OSX Settings

This repository contains my ZSH, iTerm and [Super Awesome Vim settings](https://github.com/kevintuhumury/vim-settings). The last is included as a submodule.

The features included are among others:

* Colored prompt for both ZSH.
* Automatic project aliases.
* Ruby on Rails specific aliases.
* RVM support.
* Vim configuration (as a submodule).

## Installation

Run the following to install the OSX settings:

    git clone git://github.com/kevintuhumury/osx-settings.git ~/.osx-settings
    cd ~/.osx-settings
    ./script/install

The installation will create a backup of a previous version and symlinks the available dot files.

### Configure Git

Add the following lines to `~/.osx-settings/config/personal.zsh`:

``` bash
export GIT_AUTHOR_NAME="Your Name"
export GIT_AUTHOR_EMAIL="your.name@email.com"

export GIT_COMMITTER_NAME=$GIT_AUTHOR_NAME
export GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL
```

## Upgrading

To get the latest version:

    cd ~/.osx-settings
    git pull origin master
    ./update-submodules

This will also update all of the Vim plugins (through Pathogen). If you've customized anything, get ready to start your rebase.

## Customizing

### Project aliases

This script adds aliases for your project directories, but you'll have to tell it where your projects can be found.

Edit `.osx-settings/config/personal.zsh`, which you've already created earlier for your Git settings above. Add something like:

    PROJECT_PARENT_DIRS+=("$HOME/code")

Add as many directories as you like.

### iTerm2

In the iTerm2 general settings, check `Load preferences from a user-defined folder or URL`. Fill in the text field to point to `/Users/your_name/.osx-settings/iterm2`. You might need to restart iTerm2 after that.

### Terminal

If you have trouble reading the colors, enable `Use bright colors for bold text` in Terminal. Don't forget to select the theme included in the iTerm2 directory.

## Other settings

### Homebrew

Here's what I install on a clean OSX:

```
brew install ack imagemagick readline wget libyaml mysql zsh node sqlite memcached postgresql tree
```

Make sure to read the caveats of those packages to make them start up automatically when that makes sense.

## Credits

This is heavily inspired by others, but mostly by [@iain](https://github.com/iain).
