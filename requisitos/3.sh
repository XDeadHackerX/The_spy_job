#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

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
echo "                               ︻デ═一  Created by: XDeadHackerX v2.0  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con 𝔗𝔥𝔢 𝔰𝔭𝔶'𝔰 𝔧𝔬𝔟 es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------" 
echo
echo
echo "[3] Informacion de un Nickname/Alias/Apodo"
echo
echo "=========================================================="
echo "[1] Buscar en 574 redes sociales una cuenta con ese Nick"" |"
echo "----------------------------------------------------------"
echo "[2] Usar Google Dorks (Ver donde se a publicado ese Nick)""|"
echo "----------------------------------------------------------"
echo "[3] Usar Buscador especifico""                             |"
echo "----------------------------------------------------------"
echo "[4] Todo (Redes Sociales, Webs, Imagenes, Posts, etc)""    |"
echo "----------------------------------------------------------"
echo "[5] Volver al Menu""                                       |"
echo "=========================================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escribe el Nickname, Alias o Apodo del Objetivo (Ej: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				cd requisitos/blackbird
				echo "==========================="
				echo "  Buscando cuenta $nick"
				echo "   en 574 Redes Sociales"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				sudo python blackbird.py -u $nick
				cd ..
				cd ..
				;;
			2 )	echo
				read -p "[*] Escribe el Nickname, Alias o Apodo del Objetivo (Ej: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nick%22'"
				;;
			3 )	echo
				read -p "[*] Escribe el Nickname, Alias o Apodo del Objetivo (Ej: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.idcrawl.com/u/$nick'"
				;;
			4 )	echo
				read -p "[*] Escribe el Nickname, Alias o Apodo del Objetivo (Ej: anonymous23): " nick
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				echo
				cd requisitos/blackbird
				echo "==========================="
				echo " Recolectando Informacion"
				echo "  y abriendo navegadores"
				echo "==========================="
				echo "------->""                  |"
				sleep 1
				echo "------------>""             |"
				sleep 1
				echo "------------------->""      |"
				sleep 1
				echo "------------------------->""|"
				echo "==========================="
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Redes sociales con el Nickname de $nick (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				sudo python blackbird.py -u $nick
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Buscando en Internet informacion sobre $nick (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################"
				echo "[☢] Nickname: $nick"
				echo "################################"
				echo
				cd ..
				cd ..
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nick%22'" | su $user -c "firefox 'https://www.idcrawl.com/u/$nick'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			5 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/3.sh
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
			2 )	bash requisitos/3.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
