echo "===================================="
echo "Free VPS Windows 10 x64"
echo "Please support akuh.net thank you"
echo "Please support akuh.net thank you"
echo "===================================="
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
echo "===================================="
echo "===================================="
echo "update VPS please wait"
echo "===================================="
apt-get update -y > /dev/null 2>&1
apt-get upgrade -y > /dev/null 2>&1
echo "===================================="
echo "===================================="
echo "Installing Windows"
echo "===================================="
apt-get install qemu -y > /dev/null 2>&1
apt-get install qemu-system -y > /dev/null 2>&1
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
echo "===================================="
qemu-system-x86_64 -hda w10x64.img -m 4G -smp -enable-kvm -cpu host,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
echo "===================================="
echo "===================================="
echo "Wait 1-2 minute to finish bot"
echo "===================================="
echo "Free VPS Windows 10 x64"
echo "Please support akuh.net thank you"
echo "Please support akuh.net thank you"
echo "===================================="
apt install curl -y > /dev/null 2>&1
echo "===================================="
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
