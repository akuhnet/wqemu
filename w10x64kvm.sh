echo "===================================="
echo "update VPS please wait"
echo "===================================="
wget -O update.sh https://bit.ly/akuhnetupdateall
chmod +x update.sh
./update.sh
echo "===================================="
echo "Download ngrok"
echo "===================================="
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "===================================="
echo "Download windows 10x64"
echo "===================================="
curl -L -o w10.qcow2 https://bit.ly/akuhnetw10fix
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
qemu-system-x86_64  -m 4G -hda w10.qcow2 -boot d -enable-kvm -nographic -net nic -net user,hostfwd=tcp::3388-:3389 -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=4 -vga std -machine type=pc,accel=kvm > /dev/null 2>&1
echo "===================================="
echo "Wait 1 minute to finish bot"
echo "===================================="
echo "===================================="
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Username: administrator"
echo "Password: akuhnet"
echo "===================================="
