#!/usr/bin/bash

# TODO: Uncomment section when config files are implemented
# Create required directories
## directories for config files
#echo "Creating config files."
#mkdir -p $HOME/.config/galapp

# TODO: Uncomment section when cache get used
## directories for keeping track of program states(?)
#echo "Creating cache."
#mkdir -p $HOME/.cache/galapp

# directories for user data
mkdir -p $HOME/.local/share/galapp/{data,repos}
mkdir -p $HOME/.local/share/galapp/projects/dummy_project/dummy_investigation

# TODO: Add feature to create a softlink to data, projects and repos in home
# directory


