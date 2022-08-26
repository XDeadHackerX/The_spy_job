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
echo "                               ︻デ═一  Created by: XDeadHackerX v1.1  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con 𝔗𝔥𝔢 𝔰𝔭𝔶'𝔰 𝔧𝔬𝔟 es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------" 
echo
echo
echo "[2] Informacion de una Persona"
echo
echo "======================================================"
echo "[1] Usar Google Dorks""                                |"
echo "------------------------------------------------------"
echo "[2] Usar Buscador especifico""                         |"
echo "------------------------------------------------------"
echo "[3] Todo (Redes Sociales, Webs, Imagenes, Posts, etc)""|"
echo "------------------------------------------------------"
echo "[4] Volver al Menu""                                   |"
echo "======================================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escribe el Nombre del Objetivo (Ej: Guillermo): " nombre
				read -p "[*] Escribe el 1º Apellido del Objetivo (Ej: Vicente): " apellido1
				read -p "[*] Escribe el 2º Apellido del Objetivo (Ej: Ibanez): " apellido2
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22"
				;;
			2 )	echo
				read -p "[*] Escribe el Nombre del Objetivo (Ej: Guillermo): " nombre
				read -p "[*] Escribe el 1º Apellido del Objetivo (Ej: Vicente): " apellido1
				read -p "[*] Escribe el 2º Apellido del Objetivo (Ej: Ibanez): " apellido2
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox https://www.idcrawl.com/$nombre-$apellido1-$apellido2"
				;;
			3 )	echo
				read -p "[*] Escribe el Nombre del Objetivo (Ej: Guillermo): " nombre
				read -p "[*] Escribe el 1º Apellido del Objetivo (Ej: Vicente): " apellido1
				read -p "[*] Escribe el 2º Apellido del Objetivo (Ej: Ibanez): " apellido2
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo
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
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22"
				su $user -c "firefox https://www.idcrawl.com/$nombre-$apellido1-$apellido2"
				;;
			4 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/2.sh
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
			2 )	bash requisitos/2.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
