!#/bin/zsh

# brew installs fo gnupg and pinentry-mac
# setup git
git config --global user.name "megacron"
git config --global user.email "megacron@d3c3p7.com"
git config --global --add --bool push.autoSetupRemote true
git config --global gpg.program.gpg




# bring in key from usb
gpg --import-options restore --import /Volumes/EXCALIBUR/gpg/private.gpg
rm ~/.gnupg/trustdb.gpg
gpg --import-ownertrust < /Volumes/EXCALIBUR/gpg/trustdb_bak.txt
# find key # with gpg --list-secret-keys
git config --global user.signingkey <key#>

# signing through gitlab should function!