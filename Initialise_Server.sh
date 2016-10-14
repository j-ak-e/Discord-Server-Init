#!/bin/bash


###############################################################
# CREATE USERS
echo Creating users NOW!

./Create_Users.sh

echo Users created!
echo
###############################################################



###############################################################
# INSTALL DEPENDECIES AND UTILITIES
## INSTALL GENERIC DEPENDECIES
### Install generic dependencies (used by various packages)
echo Installing generic dependencies!
apt-get install build-essential libssl-dev libffi-dev git libopus-dev unzip svn screen vsftpd -y
echo Generic dependencies installed!
echo

## INSTALL FFMPEG
### Add sources to /etc/sources.list
echo Adding sources!
{
	echo 
	deb http://www.deb-multimedia.org jessie main non-free
	deb-src http://www.deb-multimedia.org jessie main non-free
	deb http://www.deb-multimedia.org testing main non-free
	deb http://ftp.uk.debian.org/debian jessie-backports main
} >> /etc/sources.list
echo Sources added!
echo

### Update cache
echo Updating cache!
apt-get update
echo Cache updated!
echo

### Trust deb-multimedia
echo Trusting deb-multimedia!
apt-get install deb-multimedia-keyring -y
echo deb-multimedia trusted!
echo

### Update cache
echo Updating cache!
apt-get update
echo Cache updated!
echo

### Install FFMPEG
echo Installing FFMPEG!
sudo apt-get install ffmpeg -y
echo Installed FFMPEG!
echo

## INSTALL PIP
### Get pip
echo Getting pip!
wget https://bootstrap.pypa.io/get-pip.py
echo Got pip!
echo

### Install pip
echo Installing pip!
python3 get-pip.py
echo Installed pip!
echo

### Install discord python interface
echo Installing discord python interface!
pip install -U git+https://github.com/Rapptz/discord.py@master#egg=discord.py[voice]
echo Installed discord python interface!
echo

### Install youtube_dl
echo Installing youtube_dl!
pip install youtube_dl
echo Installed youtube_dl!
echo

### Install imgurpython
echo Installing imgurpython!
pip install imgurpython
echo Installed imgurpython!
echo

###############################################################