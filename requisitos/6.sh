#!/bin/bash
api=`cat requisitos/.api_phone.txt`

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
echo "[6] Informacion de un Numero de Telefono"
echo
echo "============================================================="
echo "[1] Ver a que Compañia pertenece el Numero de Telefono""      |"
echo "-------------------------------------------------------------"
echo "[2] Ver si esta registrado en Instagram, Amazon o Snaptchat"" |"
echo "-------------------------------------------------------------"
echo "[3] Usar Google Dorks (Ver donde se a publicado el Telefono)""|"
echo "-------------------------------------------------------------"
echo "[4] Intentar extraer el nombre real del dueño del Telefono""  |"
echo "-------------------------------------------------------------"
echo "[5] Todo (Compañia, Redes, Google Dorks, Nombre del Dueño)""  |"
echo "-------------------------------------------------------------"
echo "[6] Volver al Menu""                                          |"
echo "============================================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escribe el Codigo del pais del Telefono del Objetivo (Ej: 34): " codigo
				read -p "[*] Escribe el Numero de Telefono del Objetivo (Ej: 625295417): " telefono
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valido: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}'`
				echo "[*] Pais: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}'`
				echo "[*] Compañia: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}'`
				;;
			2 )	echo
				read -p "[*] Escribe el Codigo del pais del Telefono del Objetivo (Ej: 34): " codigo
				read -p "[*] Escribe el Numero de Telefono del Objetivo (Ej: 62529541): " telefono
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				;;
			3 )	echo
				read -p "[*] Escribe el Codigo del pais del Telefono del Objetivo (Ej: 34): " codigo
				read -p "[*] Escribe el Numero de Telefono del Objetivo (Ej: 62529541): " telefono
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				sudo xterm -e sleep 1 && open https://www.google.com/search?q=%22+$codigo$telefono%22
				;;
			4 )	echo
				echo "A continuacion escribe en la Web el Numero de Telefono, eliga el pais y rellene las captchat que salgan al darle a (Name Lookup)"
				echo
				echo "Abriendo Navegador...."
				sleep 3
				sudo xterm -e sleep 1 && open https://www.revealname.com/
				;;
			5 )	echo
				read -p "[*] Escribe el Codigo del pais del Telefono del Objetivo (Ej: 34): " codigo
				read -p "[*] Escribe el Numero de Telefono del Objetivo (Ej: 62529541): " telefono
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Ver a que Compañia pertenece el Numero de Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valido: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}'`
				echo "[*] Pais: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}'`
				echo "[*] Compañia: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}'`
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Ver si esta registrado en Instagram, Amazon o Snaptchat (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				sudo ignorant --only-used --no-clear $codigo $telefono
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Usar Google Dorks (Ver donde se a publicado el Telefono) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				sudo xterm -e sleep 1 && open https://www.google.com/search?q=%22+$codigo$telefono%22
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Intentar extraer el nombre real del dueño del Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "A continuacion escribe en la Web el Numero de Telefono, elige el pais y rellene las captchat que salgan al darle a (Name Lookup)"
				echo
				echo "Abriendo Navegador...."
				sleep 3
				sudo xterm -e open https://www.revealname.com/
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/6.sh
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
			2 )	bash requisitos/6.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
