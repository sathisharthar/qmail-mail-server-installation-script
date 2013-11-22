#!/bin/sh
echo "alias sf='cd \$sf'" >> ~/.bashrc
echo "alias ss='cd \$ss'" >> ~/.bashrc
echo "#!/bin/sh"   > ~/sf
echo "cd /usr/local/src/" >> ~/sf
echo "#!/bin/sh"   > ~/ss
echo "cd /package" >> ~/ss
chmod 777 ~/sf
chmod 777 ~/ss
yum install gcc gcc-c++ make patch pam-devel openssl* wget vim-common  vim-enhanced -y
setenforce 0
source ~/sf
wget http://tomclegg.net/qmail/qmail-smtpd-auth-0.31.tar.gz
wget http://kaz.dl.sourceforge.net/project/qmhandle/qmhandle-1.3/qmhandle-1.3.2/qmhandle-1.3.2.tar.gz
wget http://www.datahelper.com/download/misc/qmail_patches/daemontools-0.76.errno.patch
wget http://kaz.dl.sourceforge.net/project/razor/razor-agents-sdk/2.07/razor-agents-sdk-2.07.tar.bz2
wget http://kaz.dl.sourceforge.net/project/razor/razor-agents/2.85/razor-agents-2.85.tar.bz2
wget http://www.qmail.org/netqmail-1.06.tar.gz
wget http://cr.yp.to/ucspi-tcp/ucspi-tcp-0.88.tar.gz
wget http://cr.yp.to/daemontools/daemontools-0.76.tar.gz
wget http://cr.yp.to/checkpwd/checkpassword-0.90.tar.gz
wget http://garr.dl.sourceforge.net/project/vpopmail/vpopmail-stable/5.4.33/vpopmail-5.4.33.tar.gz
wget http://www.dovecot.org/releases/1.2/dovecot-1.2.6.tar.gz
wget http://www.pldaniels.com/ripmime/ripmime-1.4.0.10.tar.gz
wget http://mirror.trouble-free.net/sources/clamav-0.97.6.tar.gz
wget http://garr.dl.sourceforge.net/project/simscan/simscan/simscan-1.4.0/simscan-1.4.0.tar.gz
wget http://qmail.jms1.net/simscan/simscan-1.4.0-combined.3.patch
wget http://www.inter7.com/devel/autorespond-2.0.5.tar.gz
wget http://untroubled.org/ezmlm/archive/7.1.1/ezmlm-idx-7.1.1.tar.gz
wget http://garr.dl.sourceforge.net/project/qmailadmin/qmailadmin-devel/qmailadmin-1.2.16.tar.gz
wget http://garr.dl.sourceforge.net/project/squirrelmail/stable/1.4.22/squirrelmail-webmail-1.4.22.tar.gz

wget http://www.cpan.org/authors/id/M/MS/MSHELOR/Digest-SHA-5.85.tar.gz
wget http://www.cpan.org/authors/id/G/GA/GAAS/HTML-Parser-3.71.tar.gz
wget http://www.cpan.org/authors/id/N/NL/NLNETLABS/Net-DNS-0.72.tar.gz
wget http://www.cpan.org/authors/id/M/MI/MIKER/NetAddr-IP-4.071.tar.gz
wget http://www.cpan.org/authors/id/Z/ZE/ZEFRAM/Time-HiRes-1.9726.tar.gz
wget http://www.cpan.org/authors/id/B/BI/BINGOS/Archive-Tar-1.96.tar.gz
wget http://www.cpan.org/authors/id/J/JM/JMEHNLE/mail-spf/Mail-SPF-v2.9.0.tar.gz
wget http://www.cpan.org/authors/id/N/NW/NWETTERS/IP-Country-2.28.tar.gz
wget http://www.cpan.org/authors/id/T/TO/TOMHUGHES/IO-Zlib-1.10.tar.gz
wget http://www.cpan.org/authors/id/T/TO/TODDR/Net-Ident-1.23.tar.gz
wget http://www.cpan.org/authors/id/S/SH/SHLOMIF/IO-Socket-INET6-2.71.tar.gz
wget http://www.cpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-1.955.tar.gz
wget http://www.cpan.org/authors/id/P/PM/PMQS/IO-Compress-2.062.tar.gz
wget http://www.cpan.org/authors/id/J/JA/JASLONG/Mail-DKIM-0.40.tar.gz
wget http://www.cpan.org/authors/id/G/GA/GAAS/libwww-perl-6.05.tar.gz
wget http://www.cpan.org/authors/id/T/TI/TIMB/DBI-1.630.tar.gz
wget http://www.cpan.org/authors/id/G/GA/GAAS/HTTP-Date-6.02.tar.gz
wget http://www.cpan.org/authors/id/J/JG/JGMYERS/Encode-Detect-1.01.tar.gz
wget http://www.cpan.org/authors/id/K/KM/KMCGRAIL/Mail-SpamAssassin-3.3.2.tar.gz
wget http://jeremy.kister.net/code/qmqtool/files/qmqtool-1.14.tgz
wget http://www.jms1.net/code/pfix
wget http://qmail.jms1.net/scripts/mkvalidrcptto
wget http://www.cpan.org/authors/id/T/TO/TODDR/CDB_File-0.97.tar.gz
wget http://qmail.jms1.net/scripts/mkauth
wget http://smarden.org/tinydyndns/tinydyndns-0.4.2.tar.gz
wget http://www.cpan.org/authors/id/N/NL/NLNETLABS/Net-DNS-0.72.tar.gz
wget http://www.cpan.org/authors/id/G/GA/GAAS/Digest-MD5-2.53.tar.gz
wget http://www.cpan.org/authors/id/G/GA/GAAS/Digest-HMAC-1.03.tar.gz
wget http://www.cpan.org/authors/id/G/GA/GAAS/MIME-Base64-3.14.tar.gz
wget http://www.cpan.org/authors/id/O/OV/OVID/Test-Harness-3.29.tar.gz
wget http://www.cpan.org/authors/id/R/RJ/RJBS/Test-Simple-0.99.tar.gz
wget http://www.suspectclass.com/sgifford/ucspi-tls/files/ucspi-ssl-0.70.2-sg.tar.gz
wget http://cr.yp.to/djbdns/djbdns-1.05.tar.gz

wget http://www.aeonf.com/script.tar
wget http://www.aeonf.com/conf.tar

tar -xf conf.tar
tar -xf script.tar
chmod -R 775 *
source /usr/local/src/script/1users.sh
source /usr/local/src/script/2qmail.sh
source /usr/local/src/script/3daemontool.sh
source /usr/local/src/script/4netqmail.sh
source /usr/local/src/script/5alias.sh
source ~/sf
source /usr/local/src/script/6sendmail.sh
source /usr/local/src/script/7ucspi-tcp.sh
source /usr/local/src/script/7ucspi-ssl.sh
source /usr/local/src/script/8checkpassword.sh
sh /usr/local/src/script/9mysql.sh vpopmail vpopmailuser password
source /usr/local/src/script/10vpopmail.sh
source /usr/local/src/script/11dovecot.sh
source ~/sf
source /usr/local/src/script/12servercert.sh
source /usr/local/src/script/13tcp.sh
source /usr/local/src/script/14clamav.sh
source /usr/local/src/script/15spamassassin.sh
source /usr/local/src/script/16ripmime.sh
source /usr/local/src/script/17simscan.sh
source /usr/local/src/script/18autoresponse.sh
source /usr/local/src/script/19ezmlm.sh
source /usr/local/src/script/20qmailadmin.sh
source /usr/local/src/script/21sqwebmail.sh
source /usr/local/src/script/22validrcrptto.sh
source /usr/local/src/script/23qmailhandle.sh 
source /usr/local/src/script/24qmqtool.sh
source /usr/local/src/script/25tinydns.sh
qmailctl start
qmailctl stat
