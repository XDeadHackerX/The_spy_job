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
echo "                               ︻デ═一  Created by: XDeadHackerX v2.1  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con 𝔗𝔥𝔢 𝔰𝔭𝔶'𝔰 𝔧𝔬𝔟 es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------" 
echo
echo
echo "[9] Informacion de una Imagen"
echo
echo "======================================"
echo "[1] Extraer Metadatos de la Imagen""   |"
echo "--------------------------------------"
echo "[2] Busqueda de la Imagen en Google""  |"
echo "--------------------------------------"
echo "[3] Usar Buscador especifico""         |"
echo "--------------------------------------"
echo "[4] Ampliar una Imagen con calidad x4""|"
echo "--------------------------------------"
echo "[5] Todo (Metadatos,Buscadores,Tools)""|"
echo "--------------------------------------"
echo "[6] Volver al Menu""                   |"
echo "======================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escibe el nombre del archivo con su ruta (/home/kali/Escritorio/Prueba.png): " imagen
				echo
				echo "################################################################"
				echo "[☢] Imagen: $imagen"
				echo "################################################################"
				echo
				sudo exiftool -v -s -G $imagen
				;;
			2 )	echo
				echo "A continuacion cuando se abrira la Pagina Web, deja caer la Imagen y empezara la busqueda"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/imghp?hl=en&ogbl='"
				echo
				;;
			3 )	echo
				echo "A continuacion cuando se abrira la Pagina Web, deja caer la Imagen y empezara la busqueda"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://tineye.com'"
				echo
				;;
			4 )	echo
				echo "A continuacion cuando se abrira la Pagina Web, dale al boton (Drag or Drop), selecciona la Imagen y pulse (Start All)"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://imgupscaler.com/'"
				echo
				;;
			5 )	echo
				read -p "[*] Escibe el nombre del archivo con su ruta (/home/kali/Escritorio/Prueba.png): " imagen
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrañendo Metadatos de la Imagen (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Imagen: $imagen"
				echo "################################################################"
				echo
				sudo exiftool -v -s -G $imagen
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Buscar la Imagen a traves de Google para usar su red neuronal y usar un Buscador especifico (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "################################################################"
				echo "[☢] Imagen: $imagen"
				echo "################################################################"
				echo
				echo "A continuacion cuando se abrira la Pagina Web, deja caer la Imagen y empezara la busqueda"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/imghp?hl=en&ogbl='" | su $user -c "firefox 'https://tineye.com'" | su $user -c "firefox 'https://imgupscaler.com/'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/9.sh
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
			2 )	bash requisitos/9.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
