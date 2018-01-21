## MEGADOT [![MIT License][license-badge]](LICENSE.md)
This is a personal project of various dot files.
![Screenshot of my shell prompt](https://github.com/Quamor/megadot/blob/master/bashstyle.png?raw=true)


## Base of these files are from various git repos:

[Dotfiles](https://dotfiles.github.io/)  is where many ideas have been coming together.

## Specific Thanks
[Mathias Bynens](https://github.com/mathiasbynens/dotfiles)

Further concatenation of ideas will occur in this ongoing project.

## Use
Copy the zip file to your machine.  Then cp these four files to your Home directory:
```bash
	.bashrc
	.bash_profile
	.bash_prompt
	.aliases
```
To rid of these settings just delete the files from your Home directory.

## Future Ideas Include:

Dark Mode Options File -> For Dark Mode Extention on most browsers.

Hosts File -> For specific site script blocking, mostly for bitcoin mining.

## Adjustment for Windows
For use with Git Bash found on line ~117 in .bash_prompt:

```bash
PS1+="\n"; should be changed to PS1+=$'\n';
```
