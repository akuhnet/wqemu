echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP
./ngrok tcp 3389 &>/dev/null &
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install -y xrdp
echo xfce4-session >~/.xsession
sudo service xrdp start
apt-get install -y xfonts-100dpi xfonts-100dpi-transcoded xfonts-75dpi xfonts-75dpi-transcoded xfonts-base
apt-get install -y tightvncserver
tightvncserver :1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "===================================="
