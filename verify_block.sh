#!/bin/bash

a=$(gpkr-cli getblockhash 187452)

echo $a

if [ $a = 3e60021b09174b682b213ca962405ef0c88ebb3fdf86393a3cedf19890504acd ]
  then echo "You´re on the right chain"
  gpkr-cli masternode status
 

else
  echo "You´re on the wrong chain"
  systemctl stop GoldPoker.service
  killall gpkrd
  cd .gpkr
  rm -rf backups
  rm -rf chainstate
  rm *.dat
  rm -rf database
  rm -rf zerocoin
  rm -rf blocks
  rm *.log
  rm *.pid
  rm masternode.conf
  rm -rf sporks
  wget https://www.dropbox.com/s/yp61undbgehhqjo/gpkr_bootstrap.zip
  unzip gpkr_bootstrap.zip
  rm gpkr_bootstrap.zip
  systemctl start GoldPoker.service
  sleep 60
  logiscoin-cli getinfo
fi
