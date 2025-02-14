#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para poner Kali en español
#
# Ejecución remota (puede requerir permisos sudo):
#   curl -sL https://raw.githubusercontent.com/nipegun/k-scripts/refs/heads/main/PostInst/CLI/CambiarIdiomaAes-es.sh | bash
# ----------

# Poner que sólo se genere el español de España cuando se creen locales
  echo "es_ES.UTF-8 UTF-8" | sudo tee /etc/locale.gen

# Compilar los locales borrando primero los existentes y dejando nada más que el español de España
  sudo apt-get -y update
  sudo apt-get -y install locales
  sudo locale-gen --purge es_ES.UTF-8

# Modificar el archivo /etc/default/locale reflejando los cambios
  echo 'LANG="es_ES.UTF-8"'  | sudo tee    /etc/default/locale
  echo 'LANGUAGE="es_ES:es"' | sudo tee -a /etc/default/locale

# Notificar fin de ejecución del script
  echo ""
  echo "  Cambios realizados. Cierra la sesión o reinicia el sistema para que los cambios surjan efecto."
  echo ""

