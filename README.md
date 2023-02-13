# My Personal Dotfiles

Welcome to my dotfiles

## Fresh install process
<!-- TODO -->
1. Download Xcode developer tools

    ```shell
    xcode-select --install
    ```

2. Install [Homebrew](https://brew.sh/) and follow prompt steps

    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

3. Clone repo and install*

    ```shell
    git clone --recurse-submodules https://github.com/jamaljalloh/.dotfiles.git ~/Projects/.dotfiles && cd ~/Projects/.dotfiles && ./install
    ```

*I like to install my dotfiles into `~/Projects` (with `~/.dotfiles` as a [symlink](install.conf.yaml#L19)) but feel free to change this to any destination of your choosing

## Key parts
<!-- TODO -->

## How it works?
<!-- TODO -->

## Reproduction steps
<!-- TODO -->

## Todo

* Write script to minimize fresh install to single process (handle homebrew prompts)
* Check homebrew list before trying to install
* Check macOS defaults before running script
* Write script to get current brew and mas installations and update brewfile
* Write tests and run in gitlab action
* Add vscode settings
