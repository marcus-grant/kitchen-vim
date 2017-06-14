#!/bin/bash

# main execution function to allow forward declarations
function main()
{
    script_path=$(current-script-path)
    link_path="$HOME/.vimrc"
    if [ previous-config-exists


}

# function to determine the path to where this script is located
# AS OPPOSED to the present directory which may be somewhere else
function current-script-path()
{
    source="${BASH_SOURCE[0]}"
    while [ -h "$source" ]; do
        dir="$( cd -P "$( dirname "$source" )" && pwd )"
        source="$(readlink "$source")"
        # if this $source is a relative symlink,
        # it needs to be resolved to its sourcing path
        [[ $source != /* ]] && source="$dir/$source"
    done
    echo "$( cd -P "$( dirname "$source" )" && pwd )"
}

function previous-config-exists()
{
    if [ -e $1 ]; then
        return 0
    else
        return 1
    fi
}

# function to symlink to main.vim
#function symlink-config(){
    # first check if an older symlink exists
#    if [ -e
#}


# last statement in script is the call to the main function up top
main
