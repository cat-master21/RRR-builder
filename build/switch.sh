#!/bin/sh

apt-get install git -yq
mkdir -p ~/creation_script && cd ~/creation_script
wget -q "https://github.com/rollingrhinoremix/creation_script/raw/main/script.sh"
bash ./script.sh
rm -rf ~/creation_script #just in case...

mkdir ~/tmp && cd ~/tmp
wget -q "https://github.com/rollingrhinoremix/distro/raw/main/.sources.sh"
bash ./.sources.sh

apt-get clean -y
#from rhino update
{ apt-get update -yq; apt-get dist-upgrade -yq; }

rm -rf ~/tmp
cd /
