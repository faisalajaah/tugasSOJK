echo "==============Tools SOJK================="
echo "============Faisal Dwinanto=============="
echo "===============J3D117043================="
echo "Pastikan anda terkoneksi dengan internet "
echo "Rincian alat Jaringan"
echo "1. Update Repository "
echo "2. Updgrade Repository"
echo "3. Install BIND9"
echo "4. Install ISC-DHCP-Server"
echo "5. Install Apache2"
echo "6. Install Nginx"
echo "7. Install PHP"
echo "8. Install Python"
echo "9. Install VSFTPD"
echo "10. Install OpenSSH-Server"
echo "11. Install MariaDB"
echo "12. Install Phpmyadmin"
echo "13. Install PostgreSQL"
echo "14. Install PHPGadmin"
echo "15. Install Squid"
echo "16. Install Dovecot"
echo "17. Install Postfix"
echo "18. Install LDAP"

echo -n "Masukkan pilihan : "
read pil

if [ $pil -eq 1 ] 
then
sudo apt-get update
fi

if [ $pil -eq 2 ] 
then
sudo apt-get upgrade
fi

if [ $pil -eq 3 ] 
then
sudo apt-get update
sudo apt-get install bind9 bind9utils dnsutils -y
fi

if [ $pil -eq 4 ] 
then
sudo apt-get update
sudo apt-get install -y isc-dhcp-server
fi

if [ $pil -eq 5 ] 
then
sudo apt-get update
sudo apt-get install apache2 apache2-doc apache2-utils
fi

if [ $pil -eq 6 ] 
then
sudo apt-get update
sudo apt-get install nginx
fi

if [ $pil -eq 7 ] 
then
sudo apt-get update
sudo apt-get install php
fi


if [ $pil -eq 8 ] 
then
sudo apt-get update
sudo apt-get install python
fi

if [ $pil -eq 9 ] 
then
sudo apt-get update
sudo apt-get install vsftpd
fi

if [ $pil -eq 10 ] 
then 
sudo apt-get update
sudo apt-get install openssh-server
fi

if [ $pil -eq 11 ] 
then
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.biz.net.id/repo/10.1/ubuntu xenial main'
sudo apt-get update
sudo apt-get install mariadb-server
fi


if [ $pil -eq 12 ] 
then
sudo apt-get update
sudo apt-get install phpmyadmin
fi

if [ $pil -eq 13 ] 
then
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
fi


if [ $pil -eq 14 ] 
then
sudo apt-get update
sudo apt-get install phpgadmin
fi

if [ $pil -eq 15 ] 
then
sudo apt-get update
apt-get install devscripts -y
wget http://www.squid-cache.org/Versions/v3/3.5/squid-3.5.12.tar.gz
tar zxvf squid-3.5.12.tar.gz
cd squid-3.5.12
./configure --prefix=/usr --bindir=/usr/bin --sbindir=/usr/sbin --libexecdir=/usr/lib/squid --sysconfdir=/etc/squid --localstatedir=/var --libdir=/usr/lib --with-default-user=proxy --with-logdir=/var/log/squid --with-pidfile=/var/run/squid.pid
sudo make && make install
fi

if [ $pil -eq 16 ] 
then
sudo apt-get update
sudo apt-get install dovecot-common
fi

if [ $pil -eq 17 ] 
then
sudo apt-get update
sudo apt-get install postfix
fi

if [ $pil -eq 18 ] 
then
sudo apt-get update
sudo apt-get install slapd ldap-utils 
fi

