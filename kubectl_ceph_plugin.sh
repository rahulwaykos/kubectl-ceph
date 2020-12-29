#!/bin/bash

YUM=$(which yum)
APT=$(which apt-get)

if [ ! -z "$YUM" ]; then
    yum install git -y > /dev/null
    git clone https://github.com/rahulwaykos/kubectl-ceph ~/.ceph-plugin > /dev/null
    rm ~/.ceph-plugin/kubectl_ceph_plugin.sh
    chmod -R +x ~./ceph-plugin/
    mv ~/.ceph-plugin/ /usr/local/bin > /dev/null
    
 elif [ ! -z "$APT" ]; then
    apt-get install git -y > /dev/null
    git clone https://github.com/rahulwaykos/kubectl-ceph ~/.ceph-plugin > /dev/null
    rm ~/.ceph-plugin/kubectl_ceph_plugin.sh
    chmod -R +x ~./ceph-plugin
    rm ~/.ceph-plugin/kubectl_ceph_plugin.sh
    mv ~/.ceph-plugin/ /usr/local/bin > /dev/null
fi

