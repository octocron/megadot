<img src="https://img.shields.io/badge/license-MIT-green.svg">    |   <img src="https://img.shields.io/github/languages/code-size/badges/shields.svg">

## <==Megacron's Megadots==>

* This is a personal project of various dot files.  
* These files may change over time.  
![Starship Prompt](https://live.staticflickr.com/65535/52631567950_ebad41d43f_h.jpg)

## Dotfile Ideas

[Dotfiles](https://dotfiles.github.io/frameworks/)  social exchange of dotfile ideas.  

Further concatenation of ideas will occur in this ongoing project to meet my
personal needs.  

## Nerd Font ~~> Starship ~~> zsh <<=Cross Platform=>>

If you have some customizations of your own of any of these files be sure to save them elsewhere before proceeding!  

For Starship it needs a font installed on the machine that has icons.  
To do that head over to [Nerd Fonts](https://www.nerdfonts.com/font-downloads).  
A few I like that can be installed through Homebrew:  

### Mac

```zsh
brew tap homebrew/cask-fonts
brew update && brew upgrade
brew install zsh

# List all the fonts (will also checkmark those installed already)
brew -S nerdfonts

# Favorites by order
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-caskaydia-cove-nerd-font
brew install --cask font-fira-mono-nerd-font
brew install --cask font-hack-nerd-font

# Install Starship
brew install starship

# Install Eza (colorized ls)
brew install eza
```

After these couple things just place files from the starship folder into Home (~)  

* .zsh directory with corresponding zsh files
* .zshrc
* .config/starship.toml

### Windows

* Download font
* Extract font
* Select all > right click > more options > install

```zsh
choco install starship
```

Place files same area as Mac  

### Linux

* Download font  

```zsh
[ -d ~/.fonts ] && echo "Directory Exists" || mkdir ~/.fonts
unzip yourdownload.zip -d ~/.fonts
fc-cashe -fv
```

### Ansible

TODO: create a working playbook for all platforms.  The following works for Ubuntu.

This works to install JetBrains Locally.  You could plug in other fonts as I did not
create any {{ moustaches }} and is not fully fleshed out.  

I am assuming ansible knowledge and setup on control machine.  Modify to your needs.  
Both these files in same location where ansible command is run. (whereever you want to be)  

ansible_hosts  

```ansible
[control]
localhost ansible_connection=local
```

and the second file being nerdfont.yml  

```yml
---
- name: Install JetBrains Mono...
  hosts: localhost
  connection: local
  become: true
  tasks:
    - name: Downloading JetBrains Font..
      get_url:
        url: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
        dest: /tmp/JetBrainsMono.zip
        
    - name: Extract JetBrains Fonts
      unarchive:
        src: /tmp/JetBrainsMono.zip
        dest: /usr/local/share/fonts/

    - name: Updating Font Cache...
      shell: fc-cache -f -v
```

then run:  

```zsh
ansible-playbook nerdfont.yml -i ansible_hosts
```

### The Plugins (Mac)

Unfortunately gotta complicate this for two things I have come to rely upon.  
That is. Syntax Highlighting and Auto Suggestions.  I use to have this managed  
by Oh-My-Zsh but we do not actually need it in order to use the plugins.  

* These plugins are already sourced in plugins.zsh

```zsh
brew install zsh-fast-syntax-highlighting
brew install zsh-autosuggestions
```
