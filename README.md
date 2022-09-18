# **Simple Module to create an EC2 instance with Nginx**

This module creates an EC2 instance with the needed configuration to have a nginx server up and running.

### **THIS IS A DEV MODULE DO NOT USE IT IN PRODUCTION**

---

## Architecture

![Arq,use](assets/architecture-diagram.png)

### Example of use

1. Set your **local variables**

```hcl
locals {
  vpc_name          = "<VPC-NAME>"
  vpc_cidr          = "<VPC-CIDR>"
  vpc_az            = "<VPC-AVAILABILITY-ZONE>"
  vpc_public_subnet = "<CIDR-FOR-THE-PUBLIC-SUBNET>"
  local_machine_ip  = "<YOUR-PUBLIC-IP-TO-SSH>"
  ssh_key           = "ssh-rsa <PUBLIC-RSA-KEY> user@host"
  instance_type     = "<INSTANCE-TYPE>"
  server_name       = "<ServerName>"
}
```

2. Use the [simple example](example/main.tf)

```hcl
module "nginx_server" {
  source            = "paul-cruz/nginx-server/aws"
  vpc_name          = local.vpc_name
  vpc_cidr          = local.vpc_cidr
  vpc_az            = local.vpc_az
  vpc_public_subnet = local.vpc_public_subnet
  local_machine_ip  = local.local_machine_ip
  ssh_key           = local.ssh_key
  instance_type     = local.instance_type
  server_name       = local.server_name
}
```

---

Remember this is a dev module, **_Do not use it in production_**
