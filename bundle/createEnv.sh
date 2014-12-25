#!/bin/bash

_mydir="$(pwd)"

# Updates all plugin directories.
# This is a little dangerous as some plugins can come with bugs or 
# break others with the version changes:q


for f in / * ;
do 
    echo "Working on plugin: $f"
    cd $_mydir

    cd "$f"
    pwd
    git fetch
    cd ..
done

# echo pwd
# quick checks or confirmations done while putting together this script
# dir=${PWD##*/}
# echo $dir
# basename "$PWD"
# loc=`dirname $BASH_SOURCE`
# 
# echo $loc
# 
# echo "The current working directory: $PWD"
# 
# ## or ##
# _mydir="`pwd`"
# 
# ech "My working dir: $_mydir"

# git clone https://github.com/scrooloose/syntastic.git
# git clone https://github.com/tmhedberg/matchit.git
# git clone https://github.com/tpope/vim-fugitive.git
# git clone git://github.com/tpope/vim-repeat.git
# git clone https://github.com/marijnh/tern_for_vim.git
# # git clone https://github.com/haytham/bitstarter.git
# git clone https://github.com/tpope/vim-ragtag.git
# git clonse https://github.com/scrooloose/nerdtree.git
