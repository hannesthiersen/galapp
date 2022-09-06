#!/usr/bin/bash

# Remove program directories
# directories for config files
rm -r $HOME/.config/galapp 2>/dev/null || echo "No configs to delete"
#rm -r $HOME/.config/galapp
# directories for keeping track of program states(?)
rm -r $HOME/.cache/galapp 2>/dev/null || echo "No cache to delete"
#rm -r $HOME/.cache/galapp

# directories containig user data
echo "Moving research data and deleting user data"
research_dir=$HOME/galapp_research_data
mkdir $research_dir
for research_data in $HOME/.local/share/galapp/{data,projects,repos}
do
    element=$(basename $research_data)
    mv  $research_data  $research_dir/$element
done
rm -r $HOME/.local/share/galapp

echo "Uninstall successful."
