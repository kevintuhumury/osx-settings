# Super Awesome OSX Settings

This repository contains my ZSH and iTerm settings. I also have a [Vim Settings](https://github.com/kevintuhumury/vim-settings) repository and a [Workstation](https://github.com/kevintuhumury/workstation) repository which bootstraps your OS X workstation into a development machine.

The features included are among others:

* Colored prompt for ZSH.
* Automatic project aliases.
* Ruby on Rails specific aliases.
* RVM support.

## Installation

Run the following to install the OSX settings:

    git clone git://github.com/kevintuhumury/osx-settings.git ~/.osx-settings
    cd ~/.osx-settings
    ./script/install

The installation will create a backup of a previous version and symlinks the available dot files.

### Configure Git

Git uses your name and email for each commit. You can run the following commands (with your own name and email of course) to globally set these:

``` bash
git config --global user.name "John Doe"
git config --global user.email "john.doe@example.com"
```

When you've got both personal and work related repositories on your host (like I do), you can use the aliases `home_config` and `work_config` (they're defined in `.osx-settings/config/aliases.zsh`) to set the corresponding email into your local git config of the current repository. These will only work when you set the environment variables below in `.osx-settings/config/personal.zsh`:

``` bash
export HOME_AUTHOR_EMAIL="john.doe@home.com"
export WORK_AUTHOR_EMAIL="john.doe@work.com"
```

## Upgrading

To get the latest version:

    cd ~/.osx-settings
    git pull origin master

## Customizing

### Project aliases

This script adds aliases for your project directories, but you'll have to tell it where your projects can be found.

Edit `.osx-settings/config/personal.zsh`, which you've already created earlier for your Git settings above. Add something like:

    PROJECT_PARENT_DIRS+=("$HOME/code")

Add as many directories as you like.

### iTerm2

In the iTerm2 general settings, check `Load preferences from a user-defined folder or URL`. Fill in the text field to point to `/Users/your_name/.osx-settings/iterm2`. You might need to restart iTerm2 after that.

If you have trouble reading the colors, enable `Draw bold text in bright colors` in the iTerm2 profiles settings (under Text).

## Credits

This is heavily inspired by others, but mostly by [@iain](https://github.com/iain).
