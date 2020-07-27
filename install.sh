#!/bin/bash
# sistema - script para pós instalação DEBIAN 10
# Autor: Wllynilson Carneiro

# Verificar o acesso à internet:
internet(){
   clear
      ping -w1 www.google.com >/dev/null 2>&1
         while [ $? != 0 ]; do
            clear
               echo "------------------------------------------------"
               echo "| Sem acesso à internet. Verifique sua conexão!|"
               echo "|______________________________________________|"
                  sleep 2s
                     ping -w1 www.google.com >/dev/null 2>&1
         done
   clear
      echo "[Ok] Internet conectada..."
}
internet

echo "-------------------------------"
echo "| INICIANDO INSTALAÇÃO PADRÃO. |"
echo "-------------------------------"

sleep 3

echo "ATUALIZANDO O SISTEMA..."
sudo apt update && sudo apt upgrade -y
echo "SISTEMA OPERACIONAL ATUALIZADO!"
echo "....."

echo "Iniciando instalação do git.."
sleep 3
sudo apt install git -y
echo "Git instalado!"
echo "....."
echo


echo "Iniciando instalação do pacote de desenvolvimento..."
echo "Essa instalação pode demorar de acordo com a velocidade da sua conexão."
sleep 3
echo
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl -y
echo "Pacote instalado!"
echo "....."
echo

echo "Iniciando instalação do postgresql 12..."
sleep 3
echo
sudo apt install postgresql-12 -y
echo "Postgresql 12 instalado."
echo "....."
echo

echo "Iniciando a instalação do pgadmin4.."
echo "instalação dos certificados.."
sleep 3
echo
sudo apt-get install wget ca-certificates
echo "Adição dos repositórios do postgresql.."
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sleep 3
echo
echo "Adição do repositório no sources.list"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
echo "Atualizando o sistema operacional para buscar os novos repositórios..."
sleep 3
echo
sudo apt update && sudo apt install pgadmin4 -y
echo "Iniciando a instalação.."
sleep 3
echo "....."
echo

echo "Iniciando instalação do chrome..."
sleep 3
echo
sudo apt install google-chrome-stable -y
echo "Chrome instalado!"
echo "....."
echo

echo "Iniciando a instalação dos drives de redes..."
sleep 3
echo
sudo apt install firmware-iwlwifi -y
echo "Drives instalados!"
echo "....."
echo

echo "Iniciando a instalação do openvpnv..."
sleep 3
echo
sudo apt install openvpn -y
echo "Openvpn instalado!"
echo "....."
echo

echo "Iniciando a instalação do redis-server e redis-tools..."
sleep 3
echo
sudo apt install redis-server -y
sudo apt install redis-tools -y
echo "redis-server e redis-tools instalado!"
echo "....."
echo

echo "Iniciando a intalação do docker..."
sleep 3
echo
sudo apt install -y docker
echo "Docker instalado!"
echo "Iniciando service docker.."
sudo service docker start
echo "Service iniciado."
echo "Habilitando service docker.."
sudo systemctl enable docker
echo "....."
echo

echo "Iniciando instalação do htop.."
sleep 3
echo
sudo apt install htop -y
echo "Htop instalado!"
echo "....."
echo

echo "Iniciando a instalação do ifconfig.."
sleep 3
echo
sudo apt install ifconfig -y
echo "ifconfig instalado."
echo "....."
echo

echo "Iniciando a instalação do vim"
sudo apt install vim -y
echo "vim instalado!"
echo "....."

echo "iniciando a instalação do guake.."
sleep 3
echo
sudo apt install guake -y
echo "guake instalado!"
echo "....."
echo

echo "Iniciando a instalação do gnome-tweak"
sleep 3
echo
sudo apt install gnome-tweak-tool fonts-hack-ttf -y
echo "gnome-tweak instalado!"
echo "....."
echo

echo "Iniciando a instalação do net-tools"
sleep 3
echo
sudo apt install net-tools -y
echo "Net-tools instalado!"
echo "....."
echo

echo "Iniciando a instalação do vscode.."
sleep 3
echo
sudo apt install code -y
echo "vscode instalado!"
echo "....."
echo

echo "Iniciando a instalação do spotify-client.."
sleep 3
echo
sudo apt update && sudo apt install spotify-client -y
echo "spotify-cliente instalado!"
echo "....."
echo

echo "Iniciando a instalação do telegram desktop."
sleep 3
echo
sudo apt install telegram-desktop -y
echo "Telegram instalado!"
echo

echo "---------------------------------"
echo "| INSTALAÇÃO PADRÃO FINALIZADA! |"
echo "---------------------------------"
