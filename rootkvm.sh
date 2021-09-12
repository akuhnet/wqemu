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
echo "===================================="
echo "install windows"
echo "===================================="
apt-get update
echo "Download windows files"
wget -O w10x64.img https://bit.ly/akuhnetW10x64
echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3388 &>/dev/null &
echo Downloading File From akuh.net
apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda w10x64.img -m 16G -enable-kvm -cpu host -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
echo "===================================="
echo "Keep supporting akuh.net, thank you"
echo "You Got Free RDP now"
echo "Wait 2 minute to finish bot"
echo "===================================="
sleep 432000
