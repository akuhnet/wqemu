echo "===================================="
echo "More  Free VPS akuh.net"
echo "Keep support akuh.net thanks"
echo "Please Wait"
echo "===================================="
wget -O akuh.zip https://media.githubusercontent.com/media/akuhnet/wqemu/master/akuh.zip
unzip akuh.zip
unzip root.zip
tar -xvf root.tar.xz
rm -rf akuh.zip root.zip root.tar.xz
clear
echo "===================================="
echo "You Got Root access now"
echo "akuh.net"
echo "===================================="
./dist/proot -S . /bin/bash
