yum install -y net-tools epel-release git telnet wget curl
yum update -y
systemctl disable firewalld && systemctl stop firewalld
sysctl –w net.ipv6.conf.all.disable_ipv6=1
