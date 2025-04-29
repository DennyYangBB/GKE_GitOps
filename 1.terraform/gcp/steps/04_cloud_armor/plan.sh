#!/bin/bash
terraform plan -out=plan.out -var-file=../../envs/04_cloud_armor/alpha.tfvars
