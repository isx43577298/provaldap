# Gustavo Tello Beltran ASIX Examen LDAP  
## Imatge isx43577298/provaldap:2019

__Contingut A:__

+ Entitat arrel gustavo.cat
+ Organizational unit anomenada socis
+ L'unit socis conté 3 entitats fill que son un subtipus de inetOrgPErson anomenada indepeOrgPerson
+ indepeOrgPerson conté (idcat, sardanes, foto, lema i twitter)
+ Els socis s'identifiquen amb idcat com a RDN
+ Tothom pot modificar les seves propies dades però no es poden veure les dades dels altres

__L'ultim apartat fallaria al no tenir password els socis, hauriem d'afegir un password a cada soci per poder verificar si l'acl funciona correctament__

__Contingut B:__

+ Informacio complementaria anomenda marchenaAccount que es composa de (delictes, anyscomdemna i galeres)
+ Aquesta informacio només s'ha de afegir a dos dels socis utilitzan el fitxer marchena.ldif

__Repositori Github__  
https://github.com/isx43577298/provaldap

__Repositori DockerHub__  
https://hub.docker.com/repository/docker/isx43577298/provaldap

__Ordre per descarregar-se les dues imatges__

docker pull isx43577298/provaldap:latest  
docker pull isx43577298/provaldap:2019

__Ordre per posar en marxa el container de les dues imatges__

docker run --rm --name ldapserver2019 -h ldapserver -d isx43577298/ldapserver:2019  
docker exec -it ldapserver /bin/bash

docker run --rm --name ldapserver -h ldapserver -d isx43577298/ldapserver:latest  
docker exec -it ldapserver /bin/bash

__Ordre per afegir el file marchena.ldif__

ldapadd -x -h 172.17.0.2 -D 'cn=Manager,dc=gustavo,dc=cat' -w secret -f marchena.ldif 

__Ordre per veure les dades de la imatge__

ldapsearch -x  -h 172.17.0.2 -D 'cn=Manager,dc=gustavo,dc=cat' -w secret 






