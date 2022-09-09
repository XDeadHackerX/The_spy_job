#!/bin/bash

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
echo "                               ︻デ═一  Created by: XDeadHackerX v1.3  ︻デ═一 " 
echo "          -------------------------------------------------------------------------------------------"
echo "          Cualquier acción y o actividad relacionada con 𝔗𝔥𝔢 𝔰𝔭𝔶'𝔰 𝔧𝔬𝔟 es únicamente su responsabilidad"
echo "          -------------------------------------------------------------------------------------------" 
echo
echo
echo "                                [0] ==>Instalar y Configurar Requisitos<== 🔍"
echo "                                [1] Informacion de una Pagina Web/Empresa  🔍"
echo "                                [2] Informacion de una Persona             🔍"
echo "                                [3] Informacion de un Nickname/Alias/Apodo 🔍"
echo "                                [4] Informacion de una Red Social          🔍"
echo "                                [5] Informacion de un Email                🔍"
echo "                                [6] Informacion de un Numero de Telefono   🔍"
echo "                                [7] Informacion de una IP Publica          🔍"
echo "                                [8] Informacion de una Imagen              🔍"
echo "                                [9] --------------> Salir"" <--------------- 🔍"
echo
read -p "[*] Elige una opcion: " opc1
	case $opc1 in
			0 )	bash requisitos/0.sh
				;;
			1 )	bash requisitos/1.sh
				;;
			2 )	bash requisitos/2.sh
				;;
			3 )	bash requisitos/3.sh
				;;
			4 )	bash requisitos/4.sh
				;;
			5 )	bash requisitos/5.sh
				;;    
			6 )	bash requisitos/6.sh
				;;
			7 )	bash requisitos/7.sh
				;;
			8 )	bash requisitos/8.sh
				;;
			9 )	exit
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
				bash the_spy_job.sh
	esac
