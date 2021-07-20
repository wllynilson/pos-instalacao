#!/bin/bash
# sistema - script para pós instalação Kubuntu
# Autor Wllynilson Carneiro

# Verificar o acesso a internet
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

sleep 3

echo "ATUALIZAR GRUB"
sudo update-grub
echo "......"


echo "Iniciando instalação do git.."
sleep 3
sudo apt install git -y
echo "Git instalado!"
echo "....."
echo

echo "ADICIONA GLOBAL GIT CONFIG"
sleep 3
git config --global user.email "wllynilson@gmail.com"
git config --global user.name "Wllynilson Carneiro"
echo "global config git ok."

sleep 3

internet

echo "Iniciando instalação do pacote de desenvolvimento..."
echo "Essa instalação pode demorar de acordo com a velocidade da sua conexão."
sleep 3
echo
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl -y
echo "Pacotes instalados!"
echo "....."
echo

echo "Iniciando instalação de utilitarios.."
sleep 3
echo
sudo apt install htop vim guake screenfetch -y
echo "utilitários instalados!"
echo "....."
echo

echo "Atualizando sistema ..."
sleep 2
echo
sudo apt update && sudo apt upgrade -y

mkdir ~/_Developer
echo "Diretório '_Developer' criado na raiz do usuário."

sleep 2

echo "Aguarde ..."
sleep 4


echo "---------------------------------"
echo "| INSTALAÇÃO PADRÃO FINALIZADA! |"
echo "---------------------------------"
