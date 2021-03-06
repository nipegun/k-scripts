#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#----------------------------------------------------
#  Script de NiPeGun para sincronizar los k-scripts
#----------------------------------------------------

ColorRojo='\033[1;31m'
ColorVerde='\033[1;32m'
FinColor='\033[0m'

# Comprobar si el paquete wget está instalado. Si no lo está, instalarlo.
if [[ $(dpkg-query -s wget 2>/dev/null | grep installed) == "" ]]; then
    echo ""
    echo "wget no está instalado. Iniciando su instalación..."
    echo ""
    apt-get -y update
    apt-get -y install wget
fi

# Comprobar si hay conexión a Internet antes de sincronizar los k-scripts
wget -q --tries=10 --timeout=20 --spider https://github.com
  if [[ $? -eq 0 ]]; then
    echo ""
    echo "---------------------------------------------------------"
    echo -e "  ${ColorVerde}Sincronizando los k-scripts con las últimas versiones${FinColor}"
    echo -e "  ${ColorVerde} y descargando nuevos k-scripts si es que existen...${FinColor}"
    echo "---------------------------------------------------------"
    echo ""
    rm /root/scripts/k-scripts -R 2> /dev/null
    mkdir /root/scripts 2> /dev/null
    cd /root/scripts
    git clone --depth=1 https://github.com/nipegun/k-scripts
    mkdir -p /root/scripts/k-scripts/Alias/
    rm /root/scripts/k-scripts/.git -R 2> /dev/null
    find /root/scripts/k-scripts/ -type f -iname "*.sh" -exec chmod +x {} \;
    /root/scripts/k-scripts/KScripts-CrearAlias.sh
    find /root/scripts/k-scripts/Alias -type f -exec chmod +x {} \;
    
    echo ""
    echo "-----------------------------------------"
    echo -e "  ${ColorVerde}k-scripts sincronizados correctamente${FinColor}"
    echo "-----------------------------------------"
    echo ""
  else
    echo ""
    echo "---------------------------------------------------------------------------------------------------"
    echo -e "${ColorRojo}No se pudo iniciar la sincronización de los k-scripts porque no se detectó conexión a Internet.${FinColor}"
    echo "---------------------------------------------------------------------------------------------------"
    echo ""
  fi
