#!/bin/bash

if [ "$(whoami)" != "root" ]; then
  echo "run as sudo"
  exit 1
fi 

if [ "$1" == "" ]; then
  echo usage: "sudo install-openstack-client.sh install [--upgrade] | uninstall"
  exit 1
fi

export PATH=$PATH:/usr/local/bin

echo ===============================================
echo == update pip
echo ===============================================

easy_install pip

for module in ceilometer cinder glance heat neutron nova sahara swift trove openstack barbican tuskar magnum manila mistral murano ;do

  echo =====================================================
  echo == $1 $module client
  echo =====================================================

  pip $1 $2 python-${module}client

done
