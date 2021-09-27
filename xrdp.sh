echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/ngrok3389 > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
echo "===================================="
echo "Install XFCE"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install -y xrdp
echo xfce4-session >~/.xsession
sudo service xrdp start
clear
echo "===================================="
echo "Username : root"
echo "Password : 123"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
