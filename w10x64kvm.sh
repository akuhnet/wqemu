echo "===================================="
echo "update VPS please wait"
echo "===================================="
wget -O update.sh https://bit.ly/akuhnetupdateall
chmod +x update.sh
clear
./update.sh
echo "===================================="
echo "Download windows 10x64"
echo "===================================="
clear
wget -O 22.qcow2 --no-check-certificate https://bit.ly/3aaPDUv
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
qemu-system-x86_64 -enable-kvm -cpu host -hda 22.qcow2 -boot d -net nic -smp cores=2 -net user,hostfwd=tcp::30889-:3389 $custom_param_ram -nographic &>/dev/null &
echo "===================================="
echo "PORT: 80"
echo "PORT Server: 5901"
echo "Username: administrator"
echo "Password noVNC: oXA1z6HnuQq9zB3O"
echo "Password RDP: akuhnet"
echo "Wait 1 Minute To Finish Bot"
echo "===================================="
