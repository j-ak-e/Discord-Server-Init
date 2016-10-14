#!/bin/bash


mkdir ./ja-ke/Discord-things
cd ./ja-ke/Discord-things || exit

# Get users file with token
token=$1
wget https://raw.githubusercontent.com/j-ak-e/Discord-things-users/master/Create_Users.sh?token="$token"

# Get main server init script
wget 

