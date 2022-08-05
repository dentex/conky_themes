#!/bin/bash

conf_name=Shelyak # for now it's just one...
conf_dir=~/.config/conky

# check conky installation
conky_bin=$(which conky)
if [ $? -eq 1 ]; then
  echo "## conky not available, please install it before running this script!"
  exit 1
else
  echo "## conky bin: $conky_bin"
fi

# copy files if not already present
if [[ ! -d "$conf_dir/$conf_name" ]]; then
  echo "## copying themes files in $conf_dir"
  mkdir -p $conf_dir
  cp -r . $conf_dir
else
  echo "## theme files already present"
fi

# select desired variant
arr=$(find $conf_dir -type f -name '*.conf' -printf '%f\n')

conf_file=$(zenity --width 400 --height 400 --list --title "Conky Launcher" --text "Select the configuration to launch" --radiolist --column "" --column "configurations list" `for item in ${arr[*]}; do printf "%s\n" FALSE $item; done` 2>/dev/null)
zen_res=$?

# launch conky
if [ "$zen_res" -eq 0 ] && [ -n "$conf_file" ]; then
  killall -q conky
  sleep 2
  nohup $conky_bin -c $HOME/.config/conky/$conf_name/$conf_file > /dev/null 2>&1 
fi
