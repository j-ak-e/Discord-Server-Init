#!/bin/bash


mkdir /root/ja-ke/
mkdir /root/ja-ke/Discord-things
cd ./ja-ke/Discord-things || exit

# Get users file with token
token=$1
wget https://raw.githubusercontent.com/j-ak-e/Discord-things-users/master/Create_Users.sh?token="$token"

# Get main server init script
wget https://raw.githubusercontent.com/j-ak-e/Discord-Server-Init/master/Initialise_Server.sh

# Run main server init script
./Initialise_Server.sh

