# 
  sudo systemctl stop postgresql
# Desactivar el cluster de PostgreSQL 16 para que no se inicie automáticamente
  sudo pg_dropcluster 16 main
# Mover PostgreSQL 17 al puerto 5432
  sudo pg_ctlcluster 17 main stop
  sudo sed -i 's/port = 5433/port = 5432/' /etc/postgresql/17/main/postgresql.conf
  sudo pg_ctlcluster 17 main start
# Verificar que PostgreSQL 17 ahora está en el puerto correcto
  pg_lsclusters
# Reiniciar el servicio de PostgreSQL
  sudo systemctl restart postgresql
