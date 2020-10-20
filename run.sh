#!/bin/bash

if [[ ! -d "modules/terraform-aws-s3-bucket" ]]; then
    echo "s3-bucket module not exist - module will be installed"
    cd modules
    git clone https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git
    cd .. 
    ls -la
fi

terraform init
terraform plan
echo "please enter 'yes' to apply or other to exit"
read answer;

if [[ $answer == "yes" ]]; then
    echo "terraform apply"
fi