<img src="https://img.shields.io/github/license/mashape/apistatus.svg">    |   <img src="https://img.shields.io/github/languages/code-size/badges/shields.svg">

## Welcome to Megadot Files
This is a personal project of various dot files. This is an example of bash
customization.
![Screenshot of my shell prompt](https://github.com/Quamor/megadot/blob/master/bashstyle.png?raw=true)


## Base of these files are from various git repos:

[Dotfiles](https://dotfiles.github.io/)  is where many ideas have been coming together.

## Specific Thanks
[Mathias Bynens](https://github.com/mathiasbynens/dotfiles)

Further concatenation of ideas will occur in this ongoing project to meet my
personal needs.

## Use (bash customization)
If you have some customizations of your own of any of these files be sure to save them elsewhere before proceeding!

Copy the zip file to your machine and unzip.  Then copy these four files into your Home directory:
```bash
  .bashrc
  .bash_profile
  .bash_prompt
  .aliases
```
May need to adjust to your liking but they are a good starting point.
To rid of these settings just delete the files from your Home directory.

## Adjustment for Windows
For use with Git Bash found on line ~117 in .bash_prompt:

```bash
PS1+="\n"; should be changed to PS1+=$'\n';
```
## Vim
For customization of vim I have including a very good base level .vimrc file.
```bash
  .vimrc
```
I also recommend using pathogen for plugins.  Others like Vundle but I think it
is klunky. I like to keep things minimal as possible.

## Future Ideas:

Hosts File -> For specific site script blocking, mostly for bitcoin mining.
.zshrc possibly. 
