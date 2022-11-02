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
echo "[1] Informacion de una Pagina Web/Empresa"
echo
echo "============================================================"
echo "[1] Identificar la Web y reconocer sus tecnologias""         |"
echo "------------------------------------------------------------"
echo "[2] Informacion sobre el propietario de la Web/host""        |"
echo "------------------------------------------------------------"
echo "[3] Scaneo del Servidor (Puertos con sus Versiones y SO) y"" |"
echo " (Servidores Host, DNS, MX, TXT)""                           |"
echo "------------------------------------------------------------"
echo "[4] Intentar Extraer Ip Real Web protegidas por Cloudflare"" |"
echo "------------------------------------------------------------"
echo "[5] Averiguar el Encriptado SSL de la Web""                  |"
echo "------------------------------------------------------------"
echo "[6] Listar todas las URLs del Dominio (Tarda 2/3 minutos)""  |"
echo "------------------------------------------------------------"
echo "[7] Extraer Informacion sobre una Web hecha en WordPress ""  |"
echo "------------------------------------------------------------"
echo "[8] Extraer Lista de Trabajadores""                          |"
echo "------------------------------------------------------------"
echo "[9] Extraer Correos Electronicos y Numeros de Telefono""     |"
echo "------------------------------------------------------------"
echo "[10] Extraer todos los Dominios""                            |"
echo "------------------------------------------------------------"
echo "[11] Google Dorks""                                          |"
echo "------------------------------------------------------------"
echo "[12] Comprobar el Estado de una Web (Ver si esta caida)""    |"
echo "------------------------------------------------------------"
echo "[13] Todas las opciones""                                    |"
echo "------------------------------------------------------------"
echo "[14] Volver al Menu""                                        |"
echo "============================================================"
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Identificando la Web y reconociendo las tecnologias que utiliza (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				whatweb -v -a 3 www.$dominio
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			2 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo 
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrañendo Informacion sobre el propietario del Web/host (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "[*]Registry: hace referencia a la empresa que administra la lista donde se aloja un conjunto de nombres de dominio"
				echo "[*]Registrant: es el propietario legal del dominio"
				echo "[*]Registrar: hace uso de un registrador para realizar el registro"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				whois $dominio -H
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			3 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo 
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Scaneo del Servidor (Puertos con sus Versiones y SO) y (Servidores Host, DNS, MX, TXT) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				ip="`curl -s "http://ip-api.com/line/$dominio?fields=query"`"
				echo "[*] IP Servidor: " `curl -s "http://ip-api.com/line/$dominio?fields=query"`
				echo
				echo "[*] ISP (Proveedor de Servicios en Internet): " `curl -s "http://ip-api.com/line/$dominio?fields=isp"`
				echo
				echo "[*] Continente: " `curl -s "http://ip-api.com/line/$dominio?fields=continent"`
				echo
				echo "[*] Pais: " `curl -s "http://ip-api.com/line/$dominio?fields=country"`
				echo
				echo "[*] Ciudad: " `curl -s "http://ip-api.com/line/$dominio?fields=city"`
				sleep 1
				echo
				echo "1º Escaneo de Puertos usando Naabu (No API): "
				echo "____________________________________________"
				echo
				sudo naabu -host $ip -silent -json
				echo
				echo "2º Escaneo de Puertos usando Shodan (API): "
				echo "__________________________________________"
				echo
				sudo shodan host $ip
				echo
				echo "3º Escaneo de Puertos usando ZoomEye (API): "
				echo "___________________________________________"
				echo
				sudo zoomeye ip $ip
				echo
				echo "4º Escaneo de Puertos usando Shodan Web (No API): "
				echo "_________________________________________________"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				echo
				echo
				echo "/\/\/\/\/\ En caso de usar una VPN es probable que la Opcion 1º de puertos erroneos /\/\/\/\/"
				echo
				echo "[*] Servidores Host, DNS, MX, TXT (Poner el Dominio en dnsdumpster.com): "
				su $user -c "firefox 'https://www.shodan.io/host/$ip'" | su $user -c "firefox 'https://dnsdumpster.com'"
				echo
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			4 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Intentando Extraer Ip Real Web protegidas por Cloudflare gracias a DNSs mal Configurados (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				cd requisitos/Cloudmare
				sudo python Cloudmare.py -u $dominio
				cd ..
				cd ..
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			5 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				read -p "[*] http o https?: " http
				echo 
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Averiguando el Encriptado SSL de la Web (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo sslscan $http://$dominio
				echo
				echo "Si sale este Error: Invalid target specified, se debe a que la web es http y para llevar escriptado ssl necesita ser https"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				read -p "[*] http o https?: " http
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Listando todas las URLs del Dominio (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo echo $http://$dominio | hakrawler > requisitos/resultados/$dominio.txt
				echo "Urls del Dominio: "
				echo "_________________"
				sudo cat requisitos/resultados/$dominio.txt
				echo
				echo
				echo "///////////////////////////////////////////////////////////////////////////"
				echo "El .txt se a guardado en /The_spy_job/requisitos/resultados/$dominio.txt"
				echo "///////////////////////////////////////////////////////////////////////////"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			7 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				read -p "[*] http o https?: " http
				echo 
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo Informacion sobre una Web hecha en WordPress (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo wpscan --url $http://$dominio --random-user-agent
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			8 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo lista de Trabajadores (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 100 -b linkedin
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			 9 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				read -p "[*] http o https?: " http
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo los Correos Electronicos y Numeros de Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b bing
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 100 -b google
				echo
				sudo echo $http://$dominio | hakrawler > requisitos/resultados/$dominio.txt
				echo "Correos Electronicos: "
				echo "_____________________"
				sudo cat requisitos/resultados/$dominio.txt | grep mailto:
				echo
				echo "Numeros de Telefono: "
				echo "____________________"
				sudo cat requisitos/resultados/$dominio.txt | grep tel:+
				echo
				echo
				echo "///////////////////////////////////////////////////////////////////////////"
				echo "El .txt se a guardado en /The_spy_job/requisitos/resultados/$dominio.txt"
				echo "///////////////////////////////////////////////////////////////////////////"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				
				;;
			 10 )	echo 
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo los Dominios/Ips (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b urlscan
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b omnisint
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b dnsdumpster
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			11 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Buscando las veces que se a publicado en Interner el Nombre de esa Web (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://www.google.com/search?q=%22$dominio%22'" | su $user -c "firefox 'https://www.google.com/search?q=site%3A$dominio'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			12 )	echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Comprobar el Estado de una Web (Ver si esta caida) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://check-host.net/check-http?host=$dominio'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			13 )	clear
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
				echo "[☢] Obteniendo toda la Informacion de una Pagina Web/Empresa"
				echo
				read -p "[*] Dominio/Pagina Web (Ej: web.com): " dominio
				read -p "[*] http o https?: " http
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Identificando la Web y reconociendo las tecnologias que utiliza (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				whatweb -v -a 3 www.$dominio
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo 
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrañendo Informacion sobre el propietario del Web/host (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "[*]Registry: hace referencia a la empresa que administra la lista donde se aloja un conjunto de nombres de dominio"
				echo "[*]Registrant: es el propietario legal del dominio"
				echo "[*]Registrar: hace uso de un registrador para realizar el registro"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				whois $dominio -H
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Scaneo del Servidor (Puertos con sus Versiones y SO) y (Servidores Host, DNS, MX, TXT) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				ip="`curl -s "http://ip-api.com/line/$dominio?fields=query"`"
				echo "[*] IP Servidor: " `curl -s "http://ip-api.com/line/$dominio?fields=query"`
				echo
				echo "[*] ISP (Proveedor de Servicios en Internet): " `curl -s "http://ip-api.com/line/$dominio?fields=isp"`
				echo
				echo "[*] Continente: " `curl -s "http://ip-api.com/line/$dominio?fields=continent"`
				echo
				echo "[*] Pais: " `curl -s "http://ip-api.com/line/$dominio?fields=country"`
				echo
				echo "[*] Ciudad: " `curl -s "http://ip-api.com/line/$dominio?fields=city"`
				sleep 1
				echo
				echo "1º Escaneo de Puertos usando Naabu (No API): "
				echo "____________________________________________"
				echo
				sudo naabu -host $ip -silent -json
				echo
				echo "2º Escaneo de Puertos usando Shodan (API): "
				echo "__________________________________________"
				echo
				sudo shodan host $ip
				echo
				echo "3º Escaneo de Puertos usando ZoomEye (API): "
				echo "___________________________________________"
				echo
				sudo zoomeye ip $ip
				echo
				echo "4º Escaneo de Puertos usando Shodan Web (No API): "
				echo "_________________________________________________"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
				echo
				echo
				echo "/\/\/\/\/\ En caso de usar una VPN es probable que la Opcion 1º de puertos erroneos /\/\/\/\/"
				echo
				echo "[*] Servidores Host, DNS, MX, TXT (Poner el Dominio en dnsdumpster.com): "
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://dnsdumpster.com'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Intentando Extraer Ip Real Web protegidas por Cloudflare gracias a DNSs mal Configurados (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				cd requisitos/Cloudmare
				sudo python Cloudmare.py -u $dominio
				cd ..
				cd ..
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Averiguando el Encriptado SSL de la Web (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo sslscan $http://$dominio
				echo
				echo "Si sale este Error: Invalid target specified, se debe a que la web es http y para llevar escriptado ssl necesita ser https"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Listando todas las URLs del Dominio (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo echo $http://$dominio | hakrawler > requisitos/resultados/$dominio.txt
				echo "[#] Urls del Dominio guardadas"
				echo
				echo
				echo "///////////////////////////////////////////////////////////////////////////"
				echo "El .txt se a guardado en /The_spy_job/requisitos/resultados/$dominio.txt"
				echo "///////////////////////////////////////////////////////////////////////////"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo Informacion sobre una Web hecha en WordPress (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo wpscan --url $http://$dominio --random-user-agent
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo lista de Trabajadores (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 100 -b linkedin
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo los Correos Electronicos y Numeros de Telefono (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b bing
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 100 -b google
				echo
				sudo echo $http://$dominio | hakrawler > requisitos/resultados/$dominio.txt
				echo "Correos Electronicos: "
				echo "_____________________"
				sudo cat requisitos/resultados/$dominio.txt | grep mailto:
				echo
				echo "Numeros de Telefono: "
				echo "____________________"
				sudo cat requisitos/resultados/$dominio.txt | grep tel:+
				echo
				echo
				echo "///////////////////////////////////////////////////////////////////////////"
				echo "El .txt se a guardado en /The_spy_job/requisitos/resultados/$dominio.txt"
				echo "///////////////////////////////////////////////////////////////////////////"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Extrayendo los Dominios/Ips (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b urlscan
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b omnisint
				sudo python3 requisitos/theHarvester/theHarvester.py -d $dominio -l 500 -b dnsdumpster
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Buscando las veces que se a publicado en Interner el Nombre de esa Web (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
				#su $user -c "firefox 'https://www.google.com/search?q=%22$dominio%22'" | su $user -c "firefox 'https://www.google.com/search?q=site%3A$dominio'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Comprobar el Estado de una Web (Ver si esta caida) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "######################################"
				echo "[☢] Pagina Web: www.$dominio"
				echo "######################################"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
				sleep 2
				su $user -c "firefox 'https://www.shodan.io/host/$ip'" | su $user -c "firefox 'https://dnsdumpster.com'" | su $user -c "firefox 'https://www.google.com/search?q=%22$dominio%22'" | su $user -c "firefox 'https://www.google.com/search?q=site%3A$dominio'" | su $user -c "firefox 'https://check-host.net/check-http?host=$dominio'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			14 )	echo
				sleep 1
				bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/1.sh
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
			2 )	bash requisitos/1.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
