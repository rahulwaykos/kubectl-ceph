#!/bin/bash

mon=172.31.2.2
mon1=172.31.25.23

cat <<EOF > file.yml
---
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: storage-rbd
provisioner: ceph.com/rbd
parameters:
  monitors: $mon:6789, $mon1:6789
  adminId: admin
  adminSecretName: ceph-secret
  adminSecretNamespace: kube-system
  pool: kubernetes
  userId: admin
  userSecretName: ceph-secret
  userSecretNamespace: kube-system
  imageFormat: "2"
  imageFeatures: layering
  
EOF
