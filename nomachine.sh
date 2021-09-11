echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 4000 &>/dev/null &
echo Downloading File From akuh.net
sudo apt update && apt upgrade -y
sudo apt install ubuntu-desktop -y
wget -O nomachine.deb https://bit.ly/nomachinev7
sudo apt install ./nomachine.deb
clear
echo VPS Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Keep supporting akuh.net, thank you"
echo "You Got Free VPS now"
echo "Connect With Nomachine"
echo "You can close this tab"
echo "VPS runs for 50 hours"
echo "===================================="
