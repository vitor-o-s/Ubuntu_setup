#Taken from https://gist.github.com/daniw/7439488

# install wine and ltspice
sudo apt-get install wine
# sudo pacman -S wine
cd /tmp/
wget http://ltspice.linear-tech.com/software/LTspiceXVII.exe
wine LTspiceXVII.exe
rm LTspiceXVII.exe

# start lstpice through wine
wine ~/.wine/drive_c/Program\ Files/LTC/LTspiceXVII/XVIIx64.exe

# start ltspice through wine with /tmp/example.asc
wine ~/.wine/drive_c/Program\ Files/LTC/LTspiceXVII/XVIIx64.exe /tmp/example.asc

