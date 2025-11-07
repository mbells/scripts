#!/bin/bash
# Setup 

function link_in {
    # Make one copy of the original target file,
    # or note that it did not exist by registering an empty file.
    if [ ! -f $3.orig ]; then
    	if [ -f $3 ]; then
    	    echo $2 backing up
    	    cp $3 $3.orig
        else
            echo $2 original does not exist
            touch $3.orig
    	fi
    else
        echo $2 already backed up
    fi
    
    ln -sf $1/$2 $3
}

link_in ~/devel/scripts/config bash_aliases ~/.bash_aliases
link_in ~/devel/scripts/config bashrc ~/.bashrc
link_in ~/devel/scripts/config inputrc ~/.inputrc
link_in ~/devel/scripts/config profile ~/.profile
link_in ~/devel/scripts/config cargo_env ~/.cargo/env

if [ ! -L ~/bin ]; then
    echo Linking bin
    ln -s ~/devel/scripts/bin ~/bin
else
    echo bin already linked 
fi

