#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update --fix-missing
apt-get upgrade -y
apt-get install -y software-properties-common
apt-get install -y build-essential
apt-get install -y python3-venv
apt-get install -y net-tools mtr curl host
apt-get install -y iputils-arping iputils-ping iputils-tracepath
apt-get install -y iproute2
apt-get install -y traceroute
apt-get install -y tcpdump
apt-get install -y vim
apt-get install -y git
apt-get install -y telnet
apt-get install -y sshpass
git config --global user.name "First Last"
git config --global user.email name@example.com
git config --global core.editor vim
echo "*** Creating virtual env for Ansible ***"
mkdir $HOME/venv
cd $HOME/venv
python3 -m venv ansible
source ansible/bin/activate
python -m pip install --upgrade pip
python -m pip install ntc-ansible
python -m pip install ansible
deactivate
