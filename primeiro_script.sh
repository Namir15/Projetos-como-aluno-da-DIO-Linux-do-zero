!#/bin/bash

echo  "Criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados"
 
echo "Criando grupos"

groupadd GRP_VEN
groupadd GRP_ADM
groupadd GRP_SEC

echo "Grupos criados"

echo "Criando usuarios"

useradd carlos -m -c "Carlos faz parte do grupo adm" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -m -c "Maria faz parte do grupo adm" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM  
useradd joao -m -c "Joao faz parte do grupo adm" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM

useradd debora -m -c "Debora faz parte do grupo ven" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana faz parte do grupo ven" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -m -c "Roberto faz parte do grupo ven" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN

useradd josefina -m -c "Josefina faz parte do grupo sec" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -m -c "Amanda faz parte do grupo sec" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -m -c "Rogerio faz parte do grupo sec" -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

echo "Usuarios finalizados" 

echo "Mudando as permissoes dos usuarios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Finalizado"
