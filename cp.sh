#!/bin/bash
DIR="/home/ubuntu/aws-live"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  cd /home/ubuntu/aws-live
  sudo chmod +x EmpApp.py
  sudo nohup /home/ubuntu/aws-live/EmpApp.py &
  ##echo "Installing config files in ${DIR}..."##
else
  ###  Control will jump here if $DIR does NOT exists ###
  git clone https://github.com/JitulKumarL/aws-live.git
  cd /home/ubuntu/aws-live
  sudo chmod +x EmpApp.py
  sudo nohup /home/ubuntu/aws-live/EmpApp.py &
  
  exit 1
fi
