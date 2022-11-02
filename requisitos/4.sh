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
echo "[4] Informacion de una Red Social"
echo
echo "========================================================="
echo "[1] Informacion + email de una cuenta de GitHub""         |"
echo "---------------------------------------------------------"
echo "[2] Informacion de una cuenta de Instragram""             |"
echo "---------------------------------------------------------"
echo "[3] Informacion de una cuenta de TikTok""                 |"
echo "---------------------------------------------------------"
echo "[4] Informacion de una cuenta Publica de Twitter""        |"
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
				echo "[*] Usuario: " `cat requisitos/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 24-`
				echo "[*] URL Perfil: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/github.com/ {print $2}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}'`
				echo
				sleep 2
				sudo python3 requisitos/osgint/osgint.py -u $username
				;;
			2 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: @$username"
				echo "#################################"
				echo
				curl -s https://www.picuki.com/profile/$username > requisitos/resultados/Ig-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"profile-name-bottom">/ {print $2}' | cut -c 23-`
				echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk '/"total_posts"/ {print $4}' | cut -c 21-`
				echo "[*] Siguidores: " `cat requisitos/resultados/Ig-$username.txt | awk '/followed_by/' | awk -F= '/data-followers=/ {print $2}' | awk '{print $1}'`
				echo "[*] Siguiendo: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/follows/ {print $2}' | awk '{print $1}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Ig-$username.txt | awk '/og:image/ {print}' | cut -c 43-`
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.pixwox.com/profile/$username'"
				;;
			3 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				echo "Abriendo Navegador...."
				echo
				sleep 2
				su $user -c "firefox 'https://www.tiktok.com/@$username'"
				;;
			4 )	echo
				read -p "[*] Escribe el nombre de usuario del Objetivo (Ej: anonymous23): " username
				echo
				echo "#################################"
				echo "[☢] UserName: $username"
				echo "#################################"
				echo
				curl -s https://nitter.net/$username > requisitos/resultados/Twitter-$username.txt
				echo "[*] Usuario: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}'`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}'`
				echo "[*] Se unio en: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/Joined/ {print $6}' | cut -c 19-`
				echo "[*] URL Perfil: " "https://nitter.net/$username"
				echo "[*] Tweets, Following, Followers, Likes: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 18-`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}'`
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
				echo "[*] Usuario: " `cat requisitos/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 17-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 24-`
				echo "[*] URL Perfil: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/www.twitch.tv/ {print $2}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}'`
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
				echo "[*] Usuario: " `cat requisitos/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 17-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 24-`
				echo "[*] URL Perfil: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/t.me/ {print $2}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}'`
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
				echo "[*] Usuario: " `cat requisitos/resultados/Git-$username.txt | awk '/title/ {print $2}' | cut -c 2-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Git-$username.txt | awk '/description/ {print}' | cut -c 24-`
				echo "[*] URL Perfil: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/github.com/ {print $2}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Git-$username.txt | awk '/url/&&/avatars/ {print $2}'`
				echo
				sleep 2
				sudo python3 requisitos/osgint/osgint.py -u $username
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
				curl -s https://www.picuki.com/profile/$username > requisitos/resultados/Ig-$username.txt
				echo "[*] Usuario: @$username"
				echo "[*] Nombre: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/"profile-name-bottom">/ {print $2}' | cut -c 23-`
				echo "[*] Posts: " `cat requisitos/resultados/Ig-$username.txt | awk '/"total_posts"/ {print $4}' | cut -c 21-`
				echo "[*] Siguidores: " `cat requisitos/resultados/Ig-$username.txt | awk '/followed_by/' | awk -F= '/data-followers=/ {print $2}' | awk '{print $1}'`
				echo "[*] Siguiendo: " `cat requisitos/resultados/Ig-$username.txt | awk -F= '/follows/ {print $2}' | awk '{print $1}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Ig-$username.txt | awk '/og:image/ {print}' | cut -c 43-`
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://www.picuki.com/profile/$username'"
				#su $user -c "firefox 'https://www.pixwox.com/profile/$username'"
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
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://www.tiktok.com/@$username'"
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
				curl -s https://nitter.net/$username > requisitos/resultados/Twitter-$username.txt
				echo "[*] Usuario: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:title/ {print $3}'`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/og:description/ {print $3}'`
				echo "[*] Se unio en: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/Joined/ {print $6}' | cut -c 19-`
				echo "[*] URL Perfil: " "https://nitter.net/$username"
				echo "[*] Tweets, Following, Followers, Likes: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/profile-stat-num/ {print $2}' | cut -c 18-`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitter-$username.txt | awk -F= '/twitter:image:src/ {print $3}'`
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
				echo "[*] Usuario: " `cat requisitos/resultados/Twitch-$username.txt | awk '/title/ {print}' | cut -c 17-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Twitch-$username.txt | awk '/description/ {print}' | cut -c 24-`
				echo "[*] URL Perfil: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/www.twitch.tv/ {print $2}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Twitch-$username.txt | awk '/url/&&/static-cdn/ {print $2}'`
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				sleep 2
				
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
				echo "[*] Usuario: " `cat requisitos/resultados/Tg-$username.txt | awk '/title/ {print}' | cut -c 17-`
				echo "[*] Descripcion: " `cat requisitos/resultados/Tg-$username.txt | awk '/description/ {print}' | cut -c 24-`
				echo "[*] URL Perfil: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/t.me/ {print $2}'`
				echo "[*] Foto de Perfil: " `cat requisitos/resultados/Tg-$username.txt | awk '/url/&&/cdn4/ {print $2}'`
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
				su $user -c "firefox 'https://t.me/$username'" | su $user -c "firefox 'https://www.picuki.com/profile/$username'" | su $user -c "firefox 'https://www.pixwox.com/profile/$username'" | su $user -c "firefox 'https://www.tiktok.com/@$username'" | su $user -c "firefox 'https://nitter.net/$username'" | su $user -c "firefox 'https://www.twitch.tv/$username'"
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
