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

#http://note.drx.tw/2008/02/ubuntu-dns.html
#setting the DNS server
##sudo gedit /etc/resolv.conf
###nameserver  8.8.8.8


##sudo chmod 777 restart_network.sh


#after setting can add this file into crontab check the internet connect


catch=`ping google.com -c1|grep 100% | awk '{print $1}'`
if [ "$catch" != "" ]
then
  echo fishloveloly | sudo -S /etc/init.d/networking restart
  date >>log
fi

