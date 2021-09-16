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
wget -O w10x64.img https://bit.ly/akuhnetW10x64
clear
echo "===================================="
echo "===================================="
echo "You Got Root access now"
echo "akuh.net"
echo "===================================="
echo "===================================="
./dist/proot -S . /bin/bash
echo "===================================="
echo "===================================="
echo "update VPS please wait"
echo "===================================="
apt-get update
apt-get upgrade
clear
echo "Installing Windows"
echo "===================================="
apt-get install qemu > /dev/null 2>&1
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
nohup sudo /usr/libexec/qemu-kvm -nographic -net nic -net user,hostfwd=tcp::3388-:3389 -show-cursor $custom_param_ram -localtime -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=$cpus -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive file=lite11.qcow2,index=0,media=disk,format=qcow2 -boot once=d &>/dev/null &
echo "===================================="
echo "RDP Address is your ip server"
echo "===================================="
echo "===================================="
echo "Wait 1-2 minute to finish bot"
echo "===================================="
echo "Free VPS Windows 10 x64"
echo "Please support akuh.net thank you"
echo "Please support akuh.net thank you"
echo "===================================="
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
