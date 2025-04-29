#!/bin/bash
terraform plan -out=plan.out -var-file=../../envs/01_gke_network/alpha.tfvars
