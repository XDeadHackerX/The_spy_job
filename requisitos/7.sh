#!/bin/bash
user=`cat requisitos/configuracion/.user_not_root.txt`

source requisitos/0.sh

Title
echo "[7] Informacion de una IP Publica"
echo
echo "=========================================================="
echo "[1] Ver a que Compañia de Internet pertenece la IP""       |"
echo "----------------------------------------------------------"
echo "[2] Geolocalizacion de la ciudad exacta de la IP""         |"
echo "----------------------------------------------------------"
echo "[3] Buscar los puertos abiertos y sus servicios ""         |"
echo "----------------------------------------------------------"
echo "[4] Comprobar el Estado de una IP (Ver si esta caida) ""   |"
echo "----------------------------------------------------------"
echo "[5] Todo (Compañia, Geolocalizacion, Puertos, Estado)""    |"
echo "----------------------------------------------------------"
echo "[6] Volver al Menu""                                       |"
echo "=========================================================="
echo
read -p "Elige una opcion: " opc1
	case $opc1 in
			1 )	echo
				read -p "Escribe la IP Publica del Objetivo: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Compañia de Internet: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				;;
			2 )	echo
				read -p "Escribe la IP Publica del Objetivo: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Continente: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Pais: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] Ciudad: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "Recomiendo comparar los datos Obtenidos con los de https://nordvpn.com/pt-br/ip-lookup"
				echo "ya que tienen los datos mas fiables y precisos acerca de una IP Publica"
				;;
			3 )	echo
				read -p "Escribe la IP Publica del Objetivo: " ip
				read -p "Escanear los 1000 puertos mas usados (y) o los 65535 (n)? (y/n): " opc2
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Escaneo usando Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2º Escaneo usando Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3º Escaneo de Puertos usando ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4º Escaneo usando Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Abriendo Navegador...."
							sleep 2
							su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ En caso de usar una VPN es probable que la Opcion 1º de puertos erroneos /\/\/\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Escaneo usando Nmap /65535 puertos\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2º Escaneo usando Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3º Escaneo usando Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4º Escaneo de Puertos usando ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5º Escaneo usando Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Abriendo Navegador...."
							sleep 2
							su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ En caso de usar una VPN es probable que la Opcion 1º y 2º den puertos erroneos /\/\/\/\/"
					fi
				;;
			4 )	echo
				read -p "Escribe la IP Publica del Objetivo: " ip
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Abriendo Navegador...."
				sleep 2
				su $user -c "firefox 'https://check-host.net/check-ping?host=$ip'"
				;;
			5 )	Title
				echo "[7] Informacion de una IP Publica"
				echo
				read -p "Escribe la IP Publica del Objetivo: " ip
				read -p "Escanear los 1000 puertos mas usados (y) o los 65535 (n)? (y/n): " opc2
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Informacion de una IP Publica (Geolocalizacion, Compañia de Internet, Timezone, Proxy) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "[*] Compañia de Internet: " `curl -s "http://ip-api.com/line/$ip?fields=isp"`
				echo
				echo "[*] Continente: " `curl -s "http://ip-api.com/line/$ip?fields=continent"`
				echo
				echo "[*] Pais: " `curl -s "http://ip-api.com/line/$ip?fields=country"`
				echo
				echo "[*] Ciudad: " `curl -s "http://ip-api.com/line/$ip?fields=city"`
				echo
				echo "[*] Timezone: " `curl -s "http://ip-api.com/line/$ip?fields=timezone"`
				echo
				echo "[*] Proxy: " `curl -s "http://ip-api.com/line/$ip?fields=proxy"`
				echo
				echo "Recomiendo comparar los datos Obtenidos con los de https://nordvpn.com/pt-br/ip-lookup"
				echo "ya que tienen los datos mas fiables y precisos acerca de una IP Publica"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Listando puertos abiertos y sus servicios (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
					if [ $opc2 = y ]
						then
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Escaneo usando Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "2º Escaneo usando Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "3º Escaneo de Puertos usando ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "4º Escaneo usando Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
							#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ En caso de usar una VPN es probable que la Opcion 1º de puertos erroneos /\/\/\/\/"
						else
							echo
							echo "########################"
							echo "[☢] IP: $ip"
							echo "########################"
							echo
							echo "1º Escaneo usando Nmap /65535 puertos\ (No API): "
							echo "________________________________________________"
							sudo nmap -sV -O -p "*" $ip
							echo
							echo "2º Escaneo usando Naabu (No API): "
							echo "_________________________________"
							echo
							sudo naabu -host $ip -silent -json
							echo
							echo "3º Escaneo usando Shodan (API): "
							echo "_______________________________"
							echo
							sudo shodan host $ip
							echo
							echo "4º Escaneo de Puertos usando ZoomEye (API): "
							echo "___________________________________________"
							echo
							sudo zoomeye ip $ip
							echo
							echo "5º Escaneo usando Shodan Web (No API): "
							echo "______________________________________"
							echo
							echo "Abriendo Navegador (Cuando se finalicen los procesos)...."
							#su $user -c "firefox 'https://www.shodan.io/host/$ip'"
							echo
							echo
							echo "/\/\/\/\/\ En caso de usar una VPN es probable que la Opcion 1º y 2º den puertos erroneos /\/\/\/\/"
					fi
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				echo
				echo
				echo
				echo
				echo "⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩(x_x) Comprobar el Estado de una IP (Ver si esta caida) (x_x)⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩⇩"
				echo
				echo "########################"
				echo "[☢] IP: $ip"
				echo "########################"
				echo
				echo "Abriendo Navegador y Todas las Pestañas...."
				sleep 2
				su $user -c "firefox 'https://www.shodan.io/host/$ip'" | su $user -c "firefox 'https://check-host.net/check-ping?host=$ip'"
				echo
				echo "⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧⇧"
				;;
			6 )	bash the_spy_job.sh
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				sleep 1
				bash requisitos/7.sh
	esac
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc3
	case $opc3 in
			1 )	bash the_spy_job.sh
				;;
			2 )	bash requisitos/7.sh
				;;
			3 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
