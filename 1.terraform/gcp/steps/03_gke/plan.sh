#!/bin/bash
terraform plan -out=plan.out -var-file=../../envs/03_gke/alpha.tfvars
