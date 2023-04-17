#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[8] Informacion de Video/Canal de YouTube"
echo
echo "======================================"
echo "[1] Informacion de un Video / Canal""  |"
echo "--------------------------------------"
echo "[2] Estadisticas de un Video / Canal"" |"
echo "--------------------------------------"
echo "[3] Todo (Informacion y Estadisticas)""|"
echo "--------------------------------------"
echo "[4] Volver al Menu""                   |"
echo "======================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] A continuacion pega el Link/URL del Video o Canal de YouTube: " link
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Abriendo Navegador...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'"

				;;
			2 )	echo
				read -p "[*] A continuacion pega el Link/URL del Video o Canal de YouTube: " link
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Abriendo Navegador...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/bulk?url=$link&submit=true'"
				;;
			3 )	echo
				read -p "[*] A continuacion pega el Link/URL del Video o Canal de YouTube: " link
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrañendo Informacion de un Video / Canal de YouTube (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
                echo
				sleep 2
                #su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Generando Estadisticas de un Video / Canal de YouTube (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] URL: $link"
				echo "################################################################"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
                echo
				sleep 2
                su $user -c "firefox 'https://mattw.io/youtube-metadata/?url=$link&submit=true'" | su $user -c "firefox 'https://mattw.io/youtube-metadata/bulk?url=$link&submit=true'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			4 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/8.sh
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
			2 )	bash requisitos/8.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
