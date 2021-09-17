su -l
echo "===================================="
echo "update VPS please wait"
echo "===================================="
apt install sudo -y > /dev/null 2>&1
apt install curl -y > /dev/null 2>&1
apt wget -y > /dev/null 2>&1
apt update -y > /dev/null 2>&1
apt upgrade -y > /dev/null 2>&1
echo "===================================="
clear
echo "===================================="
echo "Download ngrok"
echo "===================================="
echo "===================================="
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip1 > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
clear
echo "===================================="
echo "Downloading File From akuh.net"
echo "Download windows 10x64"
echo "===================================="
curl -L -o w10x64.img https://bit.ly/akuhnetW10x64
clear
echo "===================================="
echo "Installing Windows"
echo "===================================="
apt install qemu -y > /dev/null 2>&1
apt install qemu-system -y > /dev/null 2>&1
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
qemu-system-x86_64 -nographic -net nic -net user,hostfwd=tcp::3388-:3389 -show-cursor $custom_param_ram -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=4 -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive w10x64.img,index=0,media=disk,format=img -boot once=decho > /dev/null 2>&1
echo "===================================="
echo "Wait 1-2 minute to finish bot"
echo "===================================="
echo "===================================="
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
