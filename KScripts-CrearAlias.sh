#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
#  Script de NiPeGun para crear los alias de los k-scripts 
# ----------

ColorVerde="\033[1;32m"
FinColor="\033[0m"

echo ""
echo -e "${ColorVerde}  Creando alias para los k-scripts...${FinColor}"
echo ""

ln -s ~/scripts/k-scripts/SistemaOperativo-Actualizar.sh            ~/scripts/k-scripts/Alias/aso
ln -s ~/scripts/k-scripts/SistemaOperativo-ActualizarYApagar.sh     ~/scripts/k-scripts/Alias/asoya
ln -s ~/scripts/k-scripts/SistemaOperativo-ActualizarYReiniciar.sh  ~/scripts/k-scripts/Alias/asoyr
ln -s ~/scripts/k-scripts/SistemaOperativo-Apagar.sh                ~/scripts/k-scripts/Alias/apso
ln -s ~/scripts/k-scripts/SistemaOperativo-Reiniciar.sh             ~/scripts/k-scripts/Alias/rso

ln -s ~/scripts/k-scripts/UScripts-Sincronizar.sh                    ~/scripts/k-scripts/Alias/sinus

echo ""
echo -e "${ColorVerde}Alias creados. Deberías poder ejecutar los k-scripts escribiendo el nombre de su alias.${FinColor}"
echo ""
