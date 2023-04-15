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
echo "[4] Informacion de una Red Social"
echo
echo "========================================================="
echo "[1] Informacion + email de una cuenta de GitHub""         |"
echo "---------------------------------------------------------"
echo "[2] Informacion de una cuenta de Instragram""             |"
echo "---------------------------------------------------------"
echo "[3] Informacion de una cuenta de TikTok""                 |"
echo "---------------------------------------------------------"
echo "[4] Informacion de una cuenta de Twitter""                |"
echo "---------------------------------------------------------"
echo "[5] Informacion de una cuenta de Twitch""                 |"
echo "---------------------------------------------------------"
echo "[6] Informacion de una cuenta de Telegram""               |"
echo "---------------------------------------------------------"
echo "[7] Todo (GitHub,Instragram,TikTok,Twitter,Twitch,Tg)""   |"
echo "---------------------------------------------------------"
echo "[8] Volver al Menu""                                      |"
echo "========================================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://github.com/$username > requisitos/resultados/Git-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://github.com/$username"
				echo
				sleep 2
				sudo python3 requisitos/osgint/osgint.py -u $username
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://github.com/$username'"
				;;
			2 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: @$username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requisitos/resultados/Ig-$username.txt >/dev/null
				sleep 6
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
				echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
				echo "[*] Seguidores: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
				echo "[*] Siguiendo: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
				echo "[*] Estado de la cuenta(Vacio = Publica): " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
				echo
				echo "[*] URL Perfil: https://www.instagram.com/$username"
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.picnob.com/search/?q=$username'"
				;;
			3 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://urlebird.com/es/user/$username/ > requisitos/resultados/TikTok-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
				echo "[*] Seguidores: " `cat requisitos/resultados/TikTok-$username.txt | awk '/seguidores/ {print $5}'`
				echo "[*] Siguiendo: " `cat requisitos/resultados/TikTok-$username.txt | awk '/siguiendo/ {print $6}'`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://www.tiktok.com/@$username"
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://urlebird.com/es/user/$username/'" | su $user -c "firefox 'https://www.tiktok.com/@$username'"
				;;
			4 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requisitos/resultados/Twitter-$username.txt >/dev/null
				sleep 6
				echo "[*] Usuario + Nombre: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Se unio en: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
				echo "[*] Tweets: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
				echo "[*] Following: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
				echo "[*] Followers: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
				echo "[*] Likes: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo
				echo "[*] URL Perfil: https://nitter.net/$username"
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://nitter.net/$username'"
				;;
			5 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://www.twitch.tv/$username > requisitos/resultados/Twitch-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://www.twitch.tv/$username"
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://www.twitch.tv/$username'"
				;;
			6 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://t.me/$username > requisitos/resultados/Tg-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://t.me/$username"
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://t.me/$username'"
				;;
			7 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de GitHub (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://github.com/$username > requisitos/resultados/Git-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://github.com/$username"
				echo
				sleep 2
				sudo python3 requisitos/osgint/osgint.py -u $username
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				echo
				sleep 2
				#su $user -c "firefox 'https://github.com/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de Instagram (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://www.picnob.com/profile/$username/ -O requisitos/resultados/Ig-$username.txt >/dev/null
				sleep 6
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"fullname">/ {print $2}' | cut -c 12- | rev | cut -c6- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Ig-$username.txt | awk '/div class="sum"/ {print}' | cut -c 18- | rev | cut -c7- | rev | awk 'NR==1{print}'`
				echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==1{print}'`
				echo "[*] Seguidores: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==2{print}'`
				echo "[*] Siguiendo: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"num"/ {print $3}' | cut -c 2- | rev | cut -c3- | rev | awk 'NR==3{print}'`
				echo "[*] Estado de la cuenta(Vacio = Publica): " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/This account/ {print}' | cut -c 18- | rev | cut -c7- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Ig-$username.txt | awk '/href/&&/scontent/ {print $2}' | cut -c 7- | rev | cut -c10- | rev`
				echo
				echo "[*] URL Perfil: https://www.instagram.com/$username"
				echo
				sleep 2
				#su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.picnob.com/search/?q=$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de TikTok (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://urlebird.com/es/user/$username/ > requisitos/resultados/TikTok-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<h5 class="text-dark">/ {print}' | cut -c 23- | rev | cut -c6- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/TikTok-$username.txt | awk '/<p>/ {print}' | cut -c 4- | rev | cut -c5- | rev`
				echo "[*] Seguidores: " `cat requisitos/resultados/TikTok-$username.txt | awk '/seguidores/ {print $5}'`
				echo "[*] Siguiendo: " `cat requisitos/resultados/TikTok-$username.txt | awk '/siguiendo/ {print $6}'`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/TikTok-$username.txt | awk '/"image"/ {print}' | cut -c 14- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://www.tiktok.com/@$username"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				echo
				sleep 2
				#su $user -c "firefox 'https://urlebird.com/es/user/$username/'" | su $user -c "firefox 'https://www.tiktok.com/@$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de Twitter (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				wget --wait=40 --limit-rate=40K -U Mozilla -bq https://nitter.net/$username -O requisitos/resultados/Twitter-$username.txt >/dev/null
				sleep 6
				echo "[*] Usuario + Nombre: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo "[*] Se unio en: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-joindate/ {print $3}' | cut -c 2- | rev | cut -c13- | rev`
				echo "[*] Tweets: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==1{print}'`
				echo "[*] Following: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==2{print}'`
				echo "[*] Followers: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==3{print}'`
				echo "[*] Likes: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 20- | rev | cut -c8- | rev | awk 'NR==4{print}'`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}' | cut -c 2- | rev | cut -c5- | rev`
				echo
				echo "[*] URL Perfil: https://nitter.net/$username"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://nitter.net/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de Twitch (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://www.twitch.tv/$username > requisitos/resultados/Twitch-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://www.twitch.tv/$username"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				sleep 2
				#su $user -c "firefox 'https://www.twitch.tv/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una cuenta de Telegram (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s cli.fyi/https://t.me/$username > requisitos/resultados/Tg-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 19- | rev | cut -c3- | rev`
				echo "[*] Descripcion: " `cat requisitos/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 25- | rev | cut -c3- | rev`
				echo
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}' | cut -c 2- | rev | cut -c3- | rev`
				echo
				echo "[*] URL Perfil: https://t.me/$username"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
				su $user -c "firefox 'https://github.com/$username'" | su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.picnob.com/search/?q=$username'" | su $user -c "firefox 'https://urlebird.com/es/user/$username/'" | su $user -c "firefox 'https://www.tiktok.com/@$username'" | su $user -c "firefox 'https://nitter.net/$username'" | su $user -c "firefox 'https://www.twitch.tv/$username'" | su $user -c "firefox 'https://t.me/$username'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			8 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/4.sh
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
			2 )	bash requisitos/4.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
