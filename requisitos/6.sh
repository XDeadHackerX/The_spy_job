#!/bin/bash
api=`cat requisitos/configuracion/.api_phone.txt`
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
echo "[6] Informacion de un Numero de Telefono"
echo
echo "============================================================="
echo "[1] Ver la Compañia y el Pais del Numero de Telefono""        |"
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
				echo "[*] Valido: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Pais: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 12-`
				echo "[*] Compañia: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 12-`
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
				read -p "[*] Palabra clave /Opcional/ (Ej: Nombre, Email, Localizacion, etc): " info
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
				;;
			4 )	echo
				echo "A continuacion escribe en la Web el Numero de Telefono, eliga el pais y rellene las captchat que salgan al darle a (Name Lookup)"
				echo
				echo "Abriendo Navegador...."
				sleep 3
				su $user -c "firefox 'https://www.revealname.com'"
				;;
			5 )	echo
				read -p "[*] Escribe el Codigo del pais del Telefono del Objetivo (Ej: 34): " codigo
				read -p "[*] Escribe el Numero de Telefono del Objetivo (Ej: 62529541): " telefono
				read -p "[*] Palabra clave /Opcional/ (Ej: Nombre, Email, Localizacion, etc): " info
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Ver la Compañia y el Pais del Numero de Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#############################"
				echo "[☢] Telefono: +$codigo $telefono"
				echo "#############################"
				echo
				curl -s "https://api.veriphone.io/v2/verify?phone=%2B$codigo-$telefono&key=$api" > requisitos/resultados/$telefono.txt
				echo "[*] Valido: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $3}' | cut -c 16-`
				echo "[*] Pais: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $6}' | cut -c 12-`
				echo "[*] Compañia: " `cat requisitos/resultados/$telefono.txt | awk -F',' '{print $12}' | cut -c 12-`
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
				sleep 3
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
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'"
				#su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'"
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
				echo "Abriendo Navegador y Todas las Pestañas...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22'" | su $user -c "firefox 'https://www.google.com/search?q=%22+$codigo$telefono%22+$info'" | su $user -c "firefox 'https://www.revealname.com'"
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
