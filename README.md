<img src="https://img.shields.io/badge/license-MIT-green.svg">    |   <img src="https://img.shields.io/github/languages/code-size/badges/shields.svg">

## <==Megacron's Megadots==>

-This is a personal project of various dot files.
-These files may change over time.
![Starship Prompt](https://live.staticflickr.com/65535/52631567950_d8c2a713cb_b.jpg)

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

# Favorites by order
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-caskaydia-cove-nerd-font
brew install --cask font-fira-mono-nerd-font
brew install --cask font-hack-nerd-font

# Install Starship
brew install starship
```

Now simply place files in Home (~)

- .zsh directory with corresponding zsh files
- .zshrc
- .config/starship.toml

### Windows

- Download font
- Extract font
- Select all > right click > more options > install

```zsh
choco install starship
```

Place files same area as Mac

### Linux

- Download font

```zsh
[ -d ~/.fonts ] && echo "Directory Exists" || mkdir ~/.fonts
unzip yourdownload.zip -d ~/.fonts
fc-cashe -fv
```

### Ansible

This will be work and progress for now as I will want this to work cross platform.

```yml
- name: Checking for fonts directory...
  file:
    path: "{{ lookup('env', 'HOME') }}/.fonts"
    state: directory

- name: JetBrains exists...
  shell: "ls {{ lookup('env', 'HOME') }}/.fonts/JetBrainsMono*Nerd*Font*Complete*"
  register: jetbrains_exists
  ignore_errors: yes

- name: Downloading JetBrains...
  when: jetbrains_exists is failed
  ansible.builtin.unarchive:
    src: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
    dest: "{{ lookup('env', 'HOME') }}/.fonts/"
    remote_src: yes
```
