# Version: 0.0.1
# M06-ASO Curs 2019-2020
# ldapserver base gustavo.cat
#-------------------------------------------------
FROM fedora:27
LABEL author="isx43577298 ASIX M06 2019-2020"
LABEL description="ldapserver gustavo.cat"
RUN dnf -y install procps openldap-clients openldap-servers vim
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh

