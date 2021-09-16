clear
echo "===================================="
echo "Free VPS Windows 10 x64"
echo "Please support akuh.net thank you"
echo "Please support akuh.net thank you"
echo "===================================="
echo "===================================="
echo "Downloading files akuh.net"
echo "Get root"
echo "===================================="
wget -O akuh.zip https://bit.ly/akuhrootfix > /dev/null 2>&1
unzip akuh.zip > /dev/null 2>&1
unzip root.zip > /dev/null 2>&1
echo "===================================="
echo "Installing "
echo "===================================="
tar -xvf root.tar.xz > /dev/null 2>&1
clear
echo "Downloading files akuh.net"
echo "Get windows Files w10x64"
echo "===================================="
curl -L -o w10x64.img https://bit.ly/akuhnetW10x64
echo "===================================="
echo "===================================="
echo "You Got Root access now"
echo "akuh.net"
echo "===================================="
echo "===================================="
./dist/proot -S . /bin/bash
