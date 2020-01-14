#!/bin/bash
osascript -e 'set volume 4'
say -v 'Victoria' Hey $USER, Now updating your programs and libraries.  Please wait.
brew update
brew upgrade
brew cleanup
echo "Finished updating Homebrew, Now updating Mac."
sudo softwareupdate -i -a --restart
echo " Last Run: `date`" >> ~/update_log.txt
