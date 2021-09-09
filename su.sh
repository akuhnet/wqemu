echo "===================================="
echo "More  Free VPS akuh.net"
echo "===================================="
pip install googledrivedownloader
wget https://raw.githubusercontent.com/akuhnet/wqemu/main/getrot.py
python getrot.py
unzip root.zip
tar -xvf root.tar.xz
echo "===================================="
echo "Keep supporting akuh.net, thank you"
echo "You Got Root access now"
echo "===================================="
./dist/proot -S . /bin/bash
