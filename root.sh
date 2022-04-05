echo "===================================="
echo "More  Free VPS akuh.net"
echo "Keep support akuh.net thanks"
echo "Please Wait"
echo "===================================="
wget -O akuh.zip https://media.githubusercontent.com/media/akuhnet/wqemu/master/akuh.zip > /dev/null 2>&1
unzip akuh.zip > /dev/null 2>&1
unzip root.zip > /dev/null 2>&1
tar -xvf root.tar.xz > /dev/null 2>&1
rm -rf akuh.zip root.zip
echo "===================================="
echo "You Got Root access now"
echo "akuh.net"
echo "===================================="
./dist/proot -S . /bin/bash
