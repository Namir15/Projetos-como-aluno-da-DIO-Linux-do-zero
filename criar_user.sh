!#/bin/bash

echo "Criando usuario do sistema"

useradd guest10 -m -c "Usuario convidado" -s /bin/bash -p $(openssl passwd -1 123)
passwd -e guest10

useradd guest11 -m -c "Usuario convidado" -s /bin/bash -p $(openssl passwd -1 123)
passwd -e guest11
 
useradd guest12 -m -c "Usuario convidado" -s /bin/bash -p $(openssl passwd -1 123)
passwd -e guest12

useradd guest13 -m -c "Usuario convidado" -s /bin/bash -p $(openssl passwd -1 123)
passwd -e guest13

echo "Finalizado"
