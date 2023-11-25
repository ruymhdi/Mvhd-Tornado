#!/bin/bash
echo "----------------------------------------"
echo "[i] Installation"
echo "[i] We are now checking what system you are running."
if [ -f "/etc/debian_version" ]; then
        echo "[i] Detected Debian based Linux."
        echo "[i] We will now collect some information...."
        sudo apt-get update > /dev/null 2>&1 || echo "[!] Could not update information."
        echo "[i] We will now install git..."
        sudo apt-get install -y git > /dev/null 2>&1 || echo "[!] Could not install git."
        echo "[i] We will now install python3 and python3-pip..."
        sudo apt-get install -y python3 python3-pip > /dev/null 2>&1 || echo "[!] Could not install python3."
        echo "[i] We will now install ping..."
        sudo apt-get install -y iputils-ping > /dev/null 2>&1 || echo "[!] Could not install ping."
        echo "[i] We will now install nmap..."
        sudo apt-get install -y nmap > /dev/null 2>&1 || echo "[!] Could not install nmap."
        echo "[i] We will now install bluez..."
        sudo apt-get install -y bluez > /dev/null 2>&1 || echo "[!] Could not install bluez."
        echo "[i] We will now install aircrack-ng..."
        sudo apt-get install -y aircrack-ng > /dev/null 2>&1 || echo "[!] Could not install aircrack-ng."
        echo "[i] We will now install dsniff..."
        sudo apt-get install -y dsniff > /dev/null 2>&1 || echo "[!] Could not install dsniff."
        echo "[i] We will now install psmisc..."
        sudo apt-get install -y psmisc > /dev/null 2>&1 || echo "[!] Could not install psmisc."
        echo "[i] We will now download Mvhd-Tornado..."
        sudo git clone https://github.com/ruymhdi/Mvhd-Tornado.git > /dev/null 2>&1 || echo "[!] Could not download mvhdDDoS."
        cd Raven-Storm > /dev/null 2>&1
        echo "[i] We will now install requirements..."
        sudo pip3 install -r requirements.txt  > /dev/null 2>&1 || echo "[!] Could not install the requirements."
        echo "[i] We will now install Mvhd-Tornado..."
        sudo bash ./install_to_bin.sh || echo "[!] Could not install Mvhd-Tornado."
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "[i] Detected darwin."
        echo "[i] We will now install brew if not existing..."
        brew --help > /dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        echo "[i] We will now install git..."
        sudo brew install git > /dev/null 2>&1  || echo "[!] Could not install git."
        echo "[i] We will now install python3 and python3-pip..."
        sudo brew install python3 > /dev/null 2>&1  || echo "[!] Could not install python3."
        echo "[i] We will now install ping..."
        sudo brew install iputils-ping > /dev/null 2>&1  || echo "[!] Could not install ping."
        echo "[i] We will now install nmap..."
        sudo brew install nmap > /dev/null 2>&1  || echo "[!] Could not install nmap."
        echo "[i] We will now install bluez..."
        sudo brew install bluez > /dev/null 2>&1  || echo "[!] Could not install bluez."
        echo "[i] We will now install aircrack-ng..."
        sudo brew install aircrack-ng > /dev/null 2>&1  || echo "[!] Could not install aircrack-ng."
        echo "[i] We will now install dsniff..."
        sudo brew install dsniff > /dev/null 2>&1  || echo "[!] Could not install dsniff."
        # psmisc already preinstalled for sure.
        echo "[i] We will now download Mvhd-Tornado..."
        sudo git clone https://github.com/ruymhdi/Mvhd-Tornado.git > /dev/null 2>&1  || echo "[!] Could not download Mvhd-Tornado."
        cd Raven-Storm > /dev/null 2>&1
        echo "[i] We will now install requirements..."
        sudo pip3 install -r requirements.txt  > /dev/null 2>&1 || echo "[!] Could not install the requirements."
        echo "[i] We will now install Raven-Storm..."
        sudo bash ./install_to_bin.sh  || echo "[!] Could not install Mvhd-Tornado."
elif [ -f "/etc/arch-release" ]; then  # FIXME
        echo "[i] Detected Arch based Linux."
        echo "[i] We will now install git..."
        sudo pacman --noconfirm -S git > /dev/null 2>&1  || echo "[!] Could not install git."
        echo "[i] We will now install python3 and python3-pip..."
        sudo pacman --noconfirm -S python3 python3-pip > /dev/null 2>&1  || echo "[!] Could not install python3."
        echo "[i] We will now install ping..."
        sudo pacman --noconfirm -S iputils-ping > /dev/null 2>&1  || echo "[!] Could not install ping."
        echo "[i] We will now install nmap..."
        sudo pacman --noconfirm -S nmap > /dev/null 2>&1  || echo "[!] Could not install nmap."
        echo "[i] We will now install bluez..."
        sudo pacman --noconfirm -S bluez > /dev/null 2>&1  || echo "[!] Could not install bluez."
        echo "[i] We will now install aircrack-ng..."
        sudo pacman --noconfirm -S aircrack-ng > /dev/null 2>&1  || echo "[!] Could not install aircrack-ng."
        echo "[i] We will now install dsniff..."
        sudo pacman --noconfirm -S dsniff > /dev/null 2>&1  || echo "[!] Could not install dsniff."
        echo "[i] We will now install psmisc..."
        sudo pacman --noconfirm -S psmisc > /dev/null 2>&1 || echo "[!] Could not install psmisc."
        echo "[i] We will now download Mvhd-Tornado..."
        sudo git clone https://github.com/ruymhdi/Mvhd-Tornado.git > /dev/null 2>&1  || echo "[!] Could not download Mvhd-Tornado."
        cd Raven-Storm > /dev/null 2>&1
        echo "[i] We will now install requirements..."
        sudo pip3 install -r requirements.txt  > /dev/null 2>&1 || echo "[!] Could not install the requirements."
        echo "[i] We will now install Mvhd-Tornado..."
        sudo bash ./install_to_bin.sh || echo "[!] Could not install Mvhd-Tornado."
elif [[ "$OSTYPE" == "win32" ]]; then
        echo "[!] Please run on wsl."
else
        echo "[!] We could not detect your system."
        echo "[i] Please install some things manually"
        git clone https://github.com/ruymhdi/Mvhd-Tornado.git > /dev/null 2>&1 || echo "[!] Please install git"
        cd Raven-Storm
        python3 --help > /dev/null 2>&1 || echo "[!] Please install python3."
        command -v ping > /dev/null 2>&1 || echo "[!] Please install ping."
        command -v l2ping > /dev/null 2>&1 || echo "[!] Please install bluez."
        command -v aircrack-ng > /dev/null 2>&1 || echo "[!] Please install aircrack-ng."
        command -v arpspoof > /dev/null 2>&1 || echo "[!] Please install dsniff."
        command -v killall > /dev/null 2>&1 || echo "[!] Please install psmisc."
        nmap --help > /dev/null 2>&1 || echo "[!] Please install nmap."
        pip3 install -r requirements.txt  > /dev/null 2>&1 || echo "[!] Could not install the requirements."
        bash ./install_to_bin.sh || echo "[i] Could not install."
fi

echo "[i] Done"
exit 0
