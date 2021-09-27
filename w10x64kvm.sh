echo "===================================="
echo "update VPS please wait"
echo "===================================="
wget -O update.sh https://bit.ly/akuhnetupdateall
chmod +x update.sh
clear
./update.sh
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
clear
./ng.sh
echo "===================================="
echo "Download windows 10x64"
echo "===================================="
clear
curl -L -o w10.qcow2 https://bit.ly/3CPrIGv
clear
echo "===================================="
echo "Installing Windows"
echo "===================================="
echo -ne '>>>>>>>>>>>>>>            [50%]\r'
apt install qemu -y > /dev/null 2>&1
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'
apt install qemu-system -y > /dev/null 2>&1
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
echo -ne '\n'
echo "===================================="
echo "Starting Windows"
echo "===================================="
qemu-system-x86_64 -nographic -net nic -net user,hostfwd=tcp::3388-:3389 -show-cursor $custom_param_ram -localtime -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=$cpus -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive file=w10.qcow2,index=0,media=disk,format=qcow2,if=virtio -boot once=d &>/dev/null &
echo "===================================="
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Username: administrator"
echo "Password: akuhnet"
echo "Wait 1 minute to finish bot"
echo "===================================="
sleep sleep 9876543210
