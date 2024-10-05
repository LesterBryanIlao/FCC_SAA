#!/usr/bin/env bash

sudo apt update
# cdk
./bin/aws_cdk_install.sh

# terraform
./bin/terraform_install.sh

# utils
./bin/utils_install.sh

#aws-cli
./bin/aws_cli_install.sh
export AWS_CLI_AUTO_PROMPT=on-partial