#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
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
				read -p "[*] Palabra clave /Opcional/ (Ej: Telefono, Email, Localizacion, etc): " info
				echo
				echo "###########################################"
				echo "[☢] Nombre: $nombre $apellido1 $apellido2"
				echo "###########################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22+$info'" 
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
				su $user -c "firefox 'https://www.idcrawl.com/$nombre-$apellido1-$apellido2'"
				;;
			3 )	echo
				read -p "[*] Escribe el Nombre del Objetivo (Ej: Guillermo): " nombre
				read -p "[*] Escribe el 1º Apellido del Objetivo (Ej: Vicente): " apellido1
				read -p "[*] Escribe el 2º Apellido del Objetivo (Ej: Ibanez): " apellido2
				read -p "[*] Palabra clave /Opcional/ (Ej: Telefono, Email, Localizacion, etc): " info
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
				su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22$nombre+$apellido1+$apellido2%22+$info'" | su $user -c "firefox 'https://www.idcrawl.com/$nombre-$apellido1-$apellido2'"
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
