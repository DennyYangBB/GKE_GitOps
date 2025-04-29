#!/bin/bash
terraform plan -out=plan.out -var-file=../../envs/02_registry/alpha.tfvars
