#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

sudo apt -y update
sudo apt -y install xrdp
sudo apt -y install xfce4-goodies

echo "xfce4-session" > ~/.xsession

sudo systemctl enable xrdp --now

chmod 600 ~/.xsession

