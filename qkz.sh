#!/bin/bash
# -*- coding:YTF8-NO BO

echo -e "\e[36m
                    _ooOoo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                  O\  =  /O

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
---------------------------------------------

       资料全部来源于网络，仅供学习
免费 免费 免费 免费 免费 免费 免费 免费 免费 免费
-----------------------------------
\e[0m\n"
mount -o remount,rw /
cd /home/root/
curl -sS https://ghproxy.com/https://github.com/1114834078/TM70/blob/main/wj.zip
unzip wj.zip
chmod 755 wj
while :
do
echo   "1 开SSH"
echo -e  "2 去控制" 
echo -e  "3 添加host"
echo -e  "4 页面开多功能"
echo -e  "5 jc09的 8080后台TM70应该也可以"
echo -e  "6 58001后台"
echo -e  "7 class猫咪安装----未安装ssh-飞必要不建议装"
echo -e  "8 class猫咪安装----已安装ssh-飞必要不建议装"
echo -e  " 乱码请尝试cmd或ssh"
echo -e  "0 退出"
read -r -p "请输入要执行的数字:" ql
if  [ ! -n "$ql"  ] ;then
 echo -e  "输入不能为空,请重新输入!------5秒后返回菜单"
 	sleep 5
    continue
else
  echo -e  "您当前输入的是${ql}"
fi
if [ $ql -eq 1  ]; then
	 cp /home/root/wj/dropbear.tar.gz /home/root/dropbear.tar.gz
	 cd /home/root/
	tar -zxvf dropbear.tar.gz
	echo -e  "稍等passwd 输两次root 密码"
    bash /home/root/dropbear/script/start-sshd.sh
    cd /etc/init.d/
    mv hostname.sh hostname.sh20230901
    cp /home/root/wj/hostname.sh /etc/init.d/hostname.sh
    passwd root
    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 2  ]; then
	cd /usr/bin/
mv mm-aging_test mm-aging_test.bak
mv mm-auth mm-auth.bak
mv mm-fota mm-fota.bak
mv mm-monitor mm-monitor.bak
mv mm-test mm-test.bak
mv mm_app_cmd mm_app_cmd.bak
mv mm-keep-alive.sh mm-keep-alive.sh.bak
mv mosquitto mosquitto.bak 
mv mosquitto_pub mosquitto_pub.bak
mv mosquitto_rr mosquitto_rr.bak
mv mosquitto_sub mosquitto_sub.bak
cd /usr/sbin
mv iptables iptables.bak
cd /etc/mm/
sed -i.bak 's#https://ota\.mumuiot\.com:8181#127.0.0.1#g' fota_config.json
cd /etc/init.d/
mv mm-agingtest.sh mm-agingtest.sh20230831
mv mm-auth.sh mm-auth.sh20230831
mv mm-fota.sh mm-fota.sh20230831
mv mm-monitor.sh mm-monitor.sh20230831
touch mm-agingtest.sh
touch mm-auth.sh
touch mm-fota.sh
touch mm-monitor.sh
chmod 755 mm-agingtest.sh
chmod 755 mm-auth.sh
chmod 755 mm-fota.sh
chmod 755 mm-monitor.sh
echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 3  ]; then
	
    cd /etc
    chmod 777 hosts
    mv hosts hosts20230902
    cp /home/root/wj/hosts /etc/hosts
    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 4  ]; then
	
    cd  /srv/www/js/
    chmod 777 config.js
    mv config.js config.js20230830
    cp /home/root/wj/config.js /srv/www/js/config.js
    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 5  ]; then
	cd  /srv/www/
	cp html  html2 
	cp js  js2 
	cd /srv
	 cp /home/root/wj/8080.zip /srv/8080.zip
	unzip -o 8080.zip  -d www
    rm -rf 8080.zip

    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 6  ]; then
	
   cp /home/root/wj/jc09.tar /home/root/jc09.tar
   cd /home/root/
   rm -rf  html
    tar xvf jc09.tar
    if [ -z "$(cat /etc/init.d/hostname.sh|grep start.sh)" ];then
echo -e  -e "\n/home/root/start.sh &\n" >> /etc/init.d/hostname.sh
fi
cd /home/root/jc09
killall at_server
killall vnstatd

cp start.sh /home/root/start.sh
cp at_server /home/root/at_server
cp vnstat /home/root/vnstat
cp vnstatd /home/root/vnstatd
cp -R html /home/root/

./at_server &
    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 7  ]; then
	cd /etc/init.d/
	  mv hostname.sh hostname.sh20230901w
	   cp /home/root/wj/hostname.shy /etc/init.d
	  mv profile profile20230901w
    cp /home/root/wj/hostname.shw /etc/init.d/hostname.sh
	cp /home/root/wj/profile  /etc/profile
	cp /home/root/wj/clash.sh  /etc/init.d/clash.sh
    source /etc/profile
    cp /home/root/wj/ShellClash.tar.gz /tmp/ShellClash.tar.gz
	echo -e  "稍等输入clash"
    mkdir -p /tmp/SC_tmp && tar -zxf '/tmp/ShellClash.tar.gz' -C /tmp/SC_tmp/ && bash /tmp/SC_tmp/init.sh && source /etc/profile >/dev/null
    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 8  ]; then
	cd /etc/init.d/
	  mv hostname.sh hostname.sh20230901y
	  cd /etc/
	  mv profile profile20230901y
    cp /home/root/wj/hostname.shy /etc/init.d/hostname.sh
	cp /home/root/wj/profile  /etc/profile
	cp /home/root/wj/clash.sh  /etc/init.d/clash.sh
    source /etc/profile
    cp /home/root/wj/ShellClash.tar.gz /tmp/ShellClash.tar.gz
	echo -e  "稍等输入clash"
    mkdir -p /tmp/SC_tmp && tar -zxf '/tmp/ShellClash.tar.gz' -C /tmp/SC_tmp/ && bash /tmp/SC_tmp/init.sh && source /etc/profile >/dev/null
    echo -e  "执行成功,全部执行完后主菜单 0 退出------5秒后返回菜单"
    sleep 5
    continue
fi
if [ $ql -eq 0  ]; then
	cd /home/root
	rm -rf tm70.zip
	mount -o remount,ro 
	echo -e  "去重启吧"
    reboot
fi
done




