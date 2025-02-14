#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para instalar los diferentes packs de herramientas en Kali
#
# Ejecución remota (puede requerir permisos sudo):
#   curl -sL https://raw.githubusercontent.com/nipegun/k-scripts/refs/heads/main/SoftInst/Packs-Instalar.sh | bash
#
# Ejecución remota como root (para sistemas sin sudo):
#   curl -sL https://raw.githubusercontent.com/nipegun/k-scripts/refs/heads/main/SoftInst/Packs-Instalar.sh | sed 's-sudo--g' | bash
#
# Bajar y editar directamente el archivo en nano
#   curl -sL https://raw.githubusercontent.com/nipegun/k-scripts/refs/heads/main/SoftInst/Packs-Instalar.sh | nano -
# ----------

# Crear el menú
  # Comprobar si el paquete dialog está instalado. Si no lo está, instalarlo.
    if [[ $(dpkg-query -s dialog 2>/dev/null | grep installed) == "" ]]; then
      echo ""
      echo -e "${cColorRojo}  El paquete dialog no está instalado. Iniciando su instalación...${cFinColor}"
      echo ""
      sudo apt-get -y update
      sudo apt-get -y install dialog
      echo ""
    fi
  menu=(dialog --checklist "Marca las opciones que quieras instalar:" 22 96 16)
    opciones=(
      1 "Actualizar la lista de paquetes disponibles en los repositorios" on
      2 "  Kali's 802.11 attacks tools"           off
      3 "  Kali's bluetooth attacks tools"        off
      4 "  Kali's cryptography & steganography"   off
      5 "  Kali's database assessment tools menu" off
      6 "  Kali's detect tools menu"              off
      7 "  Kali's exploitation tools menu"        off
      8 "  Kali's forensic tools menu"            off
      9 "  Kali's fuzzing attacks tools"          off
     10 "  Kali's GPU tools"                      off
     11 "  Kali's hardware attacks tools"         off
     12 "  Kali's identify tools menu"            off
     13 "  Kali's information gathering menu"     off
     14 "  Kali's password cracking tools menu"   off
     15 "  Kali's post exploitation tools menu"   off
     16 "  Kali's protect tools menu"             off
     17 "  Kali's recover tools menu"             off
     18 "  Kali's reporting tools menu"           off
     19 "  Kali's respond tools menu"             off
     20 "  Kali's reverse engineering menu"       off
     21 "  Kali's RFID tools"                     off
     22 "  Kali's SDR tools"                      off
     23 "  Kali's sniffing & spoofing tools menu" off
     24 "  Kali's social engineering tools menu"  off
     25 "  Kali's top 10 tools"                   off
     26 "  Kali's VoIP tools"                     off
     27 "  Kali's vulnerability analysis menu"    off
     28 "  Kali's webapp assessment tools menu"   off
     29 "  Kali's Windows resources"              off
     30 "  Kali's wireless tools menu"            off
    )
  choices=$("${menu[@]}" "${opciones[@]}" 2>&1 >/dev/tty)

  for choice in $choices
    do
      case $choice in

        1)

          echo ""
          echo "  Actualizando la lista de paquetes disponibles en los repositorios... "
          echo ""

        ;;

        2)

          echo ""
          echo "  Instalando Kali's 802.11 attacks tools..."
          echo ""
          sudo apt -y install kali-tools-802-11

        ;;

        3)

          echo ""
          echo "  Instalando Kali's bluetooth attacks tools..."
          echo ""
          sudo apt -y install kali-tools-bluetooth

        ;;

        4)

          echo ""
          echo "  Instalando Kali's cryptography & steganography..."
          echo ""
          sudo apt -y install kali-tools-crypto-stego

        ;;

        5)

          echo ""
          echo "  Instalando Kali's database assessment tools menu..."
          echo ""
          sudo apt -y install kali-tools-database

        ;;

        6)

          echo ""
          echo "  Instalando Kali's detect tools menu..."
          echo ""
          sudo apt -y install kali-tools-detect

        ;;

        7)

          echo ""
          echo "  Instalando Kali's exploitation tools menu..."
          echo ""
          sudo apt -y install kali-tools-exploitation

        ;;

        8)

          echo ""
          echo "  Instalando Kali's forensic tools menu..."
          echo ""
          sudo apt -y install kali-tools-forensics

        ;;

        9)

          echo ""
          echo "  Instalando Kali's fuzzing attacks tools..."
          echo ""
          sudo apt -y install kali-tools-fuzzing

        ;;

       10)

          echo ""
          echo "  Instalando Kali's GPU tools..."
          echo ""
          sudo apt -y install kali-tools-gpu

        ;;

       11)

          echo ""
          echo "  Instalando Kali's hardware attacks tools..."
          echo ""
          sudo apt -y install kali-tools-hardware

        ;;

       12)

          echo ""
          echo "  Instalando Kali's identify tools menu..."
          echo ""
          sudo apt -y install kali-tools-identify

        ;;

       13)

          echo ""
          echo "  Instalando Kali's information gathering menu..."
          echo ""
          sudo apt -y install kali-tools-information-gathering

        ;;

       14)

          echo ""
          echo "  Instalando Kali's password cracking tools menu..."
          echo ""
          sudo apt -y install kali-tools-passwords

        ;;

       15)

          echo ""
          echo "  Instalando Kali's post exploitation tools menu..."
          echo ""
          sudo apt -y install kali-tools-post-exploitation

        ;;

       16)

          echo ""
          echo "  Instalando Kali's protect tools menu..."
          echo ""
          sudo apt -y install kali-tools-protect

        ;;

       17)

          echo ""
          echo "  Instalando Kali's recover tools menu..."
          echo ""
          sudo apt -y install kali-tools-recover

        ;;

       18)

          echo ""
          echo "  Instalando Kali's reporting tools menu..."
          echo ""
          sudo apt -y install kali-tools-reporting

        ;;

       19)

          echo ""
          echo "  Instalando Kali's respond tools menu..."
          echo ""
          sudo apt -y install kali-tools-respond

        ;;

       20)

          echo ""
          echo "  Instalando Kali's reverse engineering menu..."
          echo ""
          sudo apt -y install kali-tools-reverse-engineering

        ;;


       21)

          echo ""
          echo "  Instalando Kali's RFID tools..."
          echo ""
          sudo apt -y install kali-tools-rfid

        ;;

       22)

          echo ""
          echo "  Instalando Kali's SDR tools..."
          echo ""
          sudo apt -y install kali-tools-sdr

        ;;

       23)

          echo ""
          echo "  Instalando Kali's sniffing & spoofing tools menu..."
          echo ""
          sudo apt -y install kali-tools-sniffing-spoofing

        ;;


       24)

          echo ""
          echo "  Instalando Kali's social engineering tools menu..."
          echo ""
          sudo apt -y install kali-tools-social-engineering

        ;;

       25)

          echo ""
          echo "  Instalando Kali's top 10 tools..."
          echo ""
          sudo apt -y install kali-tools-top10

        ;;

       26)

          echo ""
          echo "  Instalando Kali's VoIP tools..."
          echo ""
          sudo apt -y install kali-tools-voip

        ;;

       27)

          echo ""
          echo "  Instalando Kali's vulnerability analysis menu..."
          echo ""
          sudo apt -y install kali-tools-vulnerability

        ;;

       28)

          echo ""
          echo "  Instalando Kali's webapp assessment tools menu..."
          echo ""
          sudo apt -y install kali-tools-web

        ;;

       29)

          echo ""
          echo "  Instalando Kali's Windows resources..."
          echo ""
          sudo apt -y install kali-tools-windows-resources

        ;;

       30)

          echo ""
          echo "  Instalando Kali's wireless tools menu..."
          echo ""
          sudo apt -y install kali-tools-wireless

        ;;

    esac

done

