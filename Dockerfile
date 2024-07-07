from ubuntu:20.04

# update the source file to whatever source you want
copy ./sources.list /etc/apt/sources.list

run apt update

# software-properties-common is for add-apt-repository
# net-tools for ifconfig
run apt  install vim -y
run apt  install systemctl -y
run apt  install software-properties-common -y
run apt  install net-tools -y

copy ./start.sh /root/start.sh
copy ./dummy-service.sh /root/dummy-service.sh

run chmod a+x /root/start.sh
run chmod a+x /root/dummy-service.sh

cmd ["/bin/sh","-c","/root/start.sh;"]