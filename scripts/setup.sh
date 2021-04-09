#!/bin/bash

echo "Setting up terraform infrastructure"

terraform init

terraform apply -auto-approve