#!/bin/bash

# Get required parameters.
LDAP_HOST=${1}
LDAP_BIND_DN=${2}
LDAP_BIND_PASSWORD=${3}

# Requirement: sudo apt-get install ldap-utils
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./groups.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./operation.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./groups/admin.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./groups/write.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./groups/execute.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./groups/read.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1001_jon.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1002_jorah.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1003_tyrion.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1004_arya.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1005_daenerys.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1006_petyr.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./users/1007_sansa.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/arya.execute.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/daenerys.write.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/jon.execute.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/jorah.execute.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/petyr.write.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/sansa.read.ldif -c
ldapadd -h ${LDAP_HOST} -x -D ${LDAP_BIND_DN} -w ${LDAP_BIND_PASSWORD} -f ./assignment/tyrion.write.ldif -c