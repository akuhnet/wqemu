echo "===================================="
echo "More  Free VPS akuh.net"
echo "===================================="
pip install googledrivedownloader
wget https://raw.githubusercontent.com/akuhnet/wqemu/main/getrot.py
python getrot.py
unzip root.zip
tar -xvf root.tar.xz
./dist/proot -S . /bin/bash
