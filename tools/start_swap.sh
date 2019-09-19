#!/bin/bash

cd /var; sudo touch swap.img; sudo chmod 600 swap.img; sudo dd if=/dev/zero of=/var/swap.img bs=20480k count=18000; mkswap /var/swap.img; sudo swapon /var/swap.img; sudo free; sudo echo "/var/swap.img none swap sw 0 0" >> /etc/fstab
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install nano htop git -y
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils software-properties-common -y
sudo apt-get install libboost-all-dev -y
sudo apt-get install libzmq3-dev libminiupnpc-dev libssl-dev libevent-dev -y
sudo apt-get install build-essential libssl-dev -y
sudo apt-get install libboost-all-dev libqrencode-dev pkg-config -y
sudo apt-get install libminiupnpc-dev qt5-default -y
sudo apt-get install qttools5-dev-tools libgmp3-dev autoconf -y
sudo apt-get install automake libtool -y
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update -y
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
apt-get install fail2ban -y
apt-get install sysstat -y
apt-get install bc -y
apt-get install sysstat -y
apt-get install lsof -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
apt-get -y autoremove
apt-get install sysstat -y
apt-get install bc -y
wget -q https://raw.githubusercontent.com/simplepospool/goldpoker/master/tools/verify_stat.sh
wget -q https://raw.githubusercontent.com/simplepospool/goldpoker/master/tools/dupmn_all.sh
wget -q https://raw.githubusercontent.com/neo3587/dupmn/master/dupmn_install.sh
bash dupmn_install.sh