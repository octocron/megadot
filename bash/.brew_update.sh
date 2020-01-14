#!/bin/bash
osascript -e 'set volume 4'
say -v 'Victoria' Hey $USER, Now updating your programs and libraries.  Please wait.
brew update
brew upgrade
brew cleanup
echo " Last Run: `date`" >> ~/update_log.txt
