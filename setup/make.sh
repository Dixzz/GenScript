cd /tmp
axel -a -n 10 https://ftp.gnu.org/gnu/make/make-${1}.tar.gz
tar xvzf /tmp/make-${1}.tar.gz
cd /tmp/make-${1};
./configure;
bash ./build.sh;
sudo install ./make /usr/local/bin/make;
rm -rf ${PWD};
cd -;