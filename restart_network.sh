#!/bin/sh

#https://magiclen.org/linux-network/
#before use this file，need to set network interfaces file
#setting the static ip information ()
##sudo nano /etc/network/interfaces
###auto xxx
###iface xxx inet static
###	address xxx.xxx.xxx.xxx
###	netmask 255.255.255.0
###	gateway xxx.xxx.xxx.xxx
###     dns_nameserver 8.8.8.8


##sudo chmod 777 restart_network.sh


#after setting can add this file into crontab check the internet connect


catch=`ping google.com -c1|grep 100% | awk '{print $1}'`
if [ "$catch" != "" ]
then
  echo [fillin_your_password] | sudo -S /etc/init.d/networking restart
  date >>log
fi

