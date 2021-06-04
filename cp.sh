#!/bin/bash
DIR="/home/$(hostname -f)/aws-live"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  cd /home/$(hostname -f)/aws-live
  echo "Installing config files in ${DIR}..."
else
  ###  Control will jump here if $DIR does NOT exists ###
  git clone https://github.com/JitulKumarL/aws-live.git
  cd /home/$(hostname -f)/aws-live
  exit 1
fi
