echo "===================================="
echo "Free VPS Windows 10 x64"
echo "Please support akuh.net thank you"
echo "Please support akuh.net thank you"
echo "===================================="
echo "===================================="
echo "===================================="
echo "===================================="
echo "===================================="
apt-get install qemu > /dev/null 2>&1
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
nohup sudo /usr/libexec/qemu-kvm -nographic -net nic -net user,hostfwd=tcp::3388-:3389 -show-cursor $custom_param_ram -localtime -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=$cpus -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive file=lite11.qcow2,index=0,media=disk,format=qcow2 -boot once=d &>/dev/null &
sleep 43200
