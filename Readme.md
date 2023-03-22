# Timeweb instance creation with Terraform

## Overview

Deploy VPC with Ubuntu Linux in [Timeweb Cloud](https://timeweb.cloud/) for Wireguard server. Wireguard installed using ansible playbook from [repo](https://github.com/Randsw/oci-wireguard). Cloud token encrypted with [SOSP](https://github.com/mozilla/sops).

## Variables

| Name              | Description                               | Default Value|
|-------------------|-------------------------------------------|--------------|
| ubuntu_version    | Ubuntu Linux version                      | 22.04        |
| instance_cpu      | Number of vCPUs in instance               | 1            |
| instance_memory   | Amount of RAM memory in VPC in Mb         | 2048         |
| instance_location | Instance location (ru-1, ru-2, pl-1, kz-1)| pl-1         |

## Deploy

Validate: `terraform validate`

Check terraform plan: `terraform plan`

Apply: `terraform apply`
