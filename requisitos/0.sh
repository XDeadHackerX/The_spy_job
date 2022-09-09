#!/bin/bas

clear
echo            
echo "                     _____  _                                 _          _         _      "
echo "                    |_   _|| |      ◤✞ тнє ѕρу'ѕ נσв ✞◥      ( )        (_)       | |     "
echo "                      | |  | |__    ___    ___  _ __   _   _ |/  ___     _   ___  | |__   "
echo "                      | |  | '_ \  / _ \  / __|| '_ \ | | | |   / __|   | | / _ \ | '_ \  "
echo "                      | |  | | | ||  __/  \__ \| |_) || |_| |   \__ \   | || (_) || |_) | "
echo "                      \_/  |_| |_| \___|  |___/| .__/  \__, |   |___/   | | \___/ |_.__/  "
echo "                                               | |      __/ |   ★  ★   _/ |               "
echo "                                               |_|     |___/          |__/                "
echo "                              __________________________________________________"					
echo "                               ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con 𝔗𝔥𝔢 𝔰𝔭𝔶'𝔰 𝔧𝔬𝔟 es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------" 
echo
echo
echo "[0] Instalar y Configurar Requisitos"
echo
echo "================================="
echo "[1] Instalar requisitos""         |"
echo "[2] Configurar API veriphone.io"" |"
echo "[3] Configurar API Shodan""       |"
echo "[4] Configurar API ZoomEye""       |"
echo "[5] Volver al Menu""              |"
echo "================================="
echo
echo
read -p "[*] Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				if ! [ -d requisitos/configuracion ]
					then
						mkdir requisitos/configuracion
				fi
				echo
				echo "Usuarios del Sistema: " 
				echo "_____________________"
				users
				echo
				read -p "Escribe de los usuarios que aparecen aqui arriba el que no tenga permisos root: " user
				echo $user > requisitos/configuracion/.user_not_root.txt
				
				if ! [ -d requisitos/resultados ]
					then
						mkdir requisitos/resultados
				fi
				
				cd requisitos

				sudo apt-get install curl -y
				sudo apt install git -y
				sudo apt-get install python3 -y
				sudo apt install python3.8 -y
				sudo apt install python-pip -y
				sudo apt install python3-pip -y
				sudo apt install python3-pip3 -y
				sudo python -m pip3 install --upgrade pip
				sudo apt-get install nmap -y
				sudo apt-get install whatweb -y
				sudo apt-get install whois -y
				sudo apt-get install -y netdiscover
				sudo pip install shodan
				sudo apt-get install xterm -y
				sudo apt install macchanger -y
				sudo pip3 install ignorant
				sudo apt-get install exiftool -y
				sudo apt install sslscan -y
				sudo apt install hakrawler -y
				sudo apt install naabu -y
				sudo apt install gedit -y
				sudo apt install wpscan -y
				sudo apt install firefox-esr -y
				sudo pip3 install zoomeye

				sudo rm -r Cloudmare
				sudo rm -r blackbird
				sudo rm -r DorkMe
				sudo rm -r osgint
				sudo rm -r holehe
				sudo rm -r ZoomEye-python


				sudo git clone https://github.com/MrH0wl/Cloudmare.git && cd Cloudmare && chmod 777 Cloudmare.py

				cd ..
				
				sudo git clone https://github.com/knownsec/ZoomEye-python.git && cd ZoomEye-python && pip3 install -r requirements.txt && python3 setup.py install
				
				cd ..
				
				sudo git clone https://github.com/hippiiee/osgint.git && cd osgint && pip3 install -r requirements.txt
				
				cd ..

				sudo git clone https://github.com/p1ngul1n0/blackbird.git && cd blackbird && pip install -r requirements.txt

				cd ..
				
				sudo git clone https://github.com/megadose/holehe.git && cd holehe && python3 setup.py install
				
				cd ..

				sudo git clone https://github.com/blueudp/DorkMe.git && cd DorkMe && pip install -r requirements.txt

				cd ..
				cd ..
				;;
			2 )	echo
				read -p "[*] Pegue a continuacion la API de tu de https://veriphone.io: " API1
				echo $API1 > requisitos/configuracion/.api_phone.txt
				echo
				echo "Listo"
				;;
			3 )	echo
				read -p "[*] Pegue a continuacion la API de tu cuenta de Shodan: " API2
				shodan init $API2
				echo $API2 > requisitos/configuracion/.api_shodan.txt
				echo
				echo "Listo"
				;;
			4 )	echo
				read -p "[*] Pegue a continuacion la API de tu cuenta de ZoomEye: " API3
				zoomeye init -apikey $API3
				echo $API3 > requisitos/configuracion/.api_zoomeye.txt
				echo
				echo "Listo"
				;;
			5 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/0.sh
	esac
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisitos/0.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
	
