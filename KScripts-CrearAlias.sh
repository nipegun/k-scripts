#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

#-----------------------------------------------------------
#  Script de NiPeGun para crear los alias de los k-scripts 
#-----------------------------------------------------------

ColorVerde="\033[1;32m"
FinColor="\033[0m"

echo ""
echo -e "${ColorVerde}Creando alias para los k-scripts...${FinColor}"
echo ""

ln -s /root/scripts/k-scripts/Externos/VelocidadDeInternet.sh              /root/scripts/d-scripts/Alias/vdi

echo ""
echo -e "${ColorVerde}Alias creados. Deberías poder ejecutar los k-scripts escribiendo el nombre de su alias.${FinColor}"
echo ""

