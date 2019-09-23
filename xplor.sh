#!/bin/bash

# making the file an executable
chmod u+x xplor

#check if user already has the bin folder in his profile
if [[ -d ~/bin ]]; then
    # do nothing
    echo "Did nothing"
else
    mkdir ~/bin
fi

# download the open.sh bash script
wget https://raw.githubusercontent.com/phayo/personal-bash-scripts/master/open -P ~/bin/

# make the open an executable
chmod u+x ~/bin/open

# read the contents of the bash profile of the user and store in a variable bsh
bsh="$(cat ~/.bash_profile)"
echo $bsh

# check if the bin PATH is already specified in the .bash_profile
if [[ $bsh == *"export PATH=~/bin:\$PATH"* ]]; then
    # do nothing
    echo "Did nothing"
else
    echo 'export PATH=~/bin:$PATH' >>~/.bash_profile
fi
# reload bash_profile 
source ~/.bash_profile

exit 0