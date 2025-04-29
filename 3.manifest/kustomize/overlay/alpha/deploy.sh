#!/bin/bash

cat > patch-image.yaml - <<EOF
- op: add
  path: /spec/template/spec/containers/0/image
  value:
    $REPO_URL/nginx-sre:latest
EOF

cat > config.yaml - <<EOF
apiVersion: v1
kind: ConfigMap
metadata:
  name: nginx-sre-text
data:
  sre.txt: |
    Hello SRE!

    ENVIRONMENT: Alpha
    VPC_NAME: $VPC_NAME
    SUBNET_NAME: $SUBNET_NAME
    PRIMARY_CIDR_RANGE: $PRIMARY_CIDR_RANGE
    PODS_CIDR_RANGE: $PODS_CIDR_RANGE
    SERVICES_CIDR_RANGE: $SERVICES_CIDR_RANGE
    GKE_NAME: $GKE_NAME
    REPO_URL: $REPO_URL
    CLOUD_ARMOR_NAME: $CLOUD_ARMOR_NAME
    DEPLOY_TIME: $(date)
EOF

kustomize build . | kubectl apply -f -
