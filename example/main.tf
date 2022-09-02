locals {
  vpc_name          = "nginx_server_vpc"
  vpc_cidr          = "10.0.0.0/16"
  vpc_az            = "us-east-1a"
  vpc_public_subnet = "10.0.1.0/24"
  local_machine_ip  = "X.X.X.X"
  ssh_key           = "ssh-rsa ... paul@paul-pc"
  instance_type     = "t2.micro"
  server_name       = "NginxServerExample"
}

module "nginx_server" {
  source            = "../"
  vpc_name          = local.vpc_name
  vpc_cidr          = local.vpc_cidr
  vpc_az            = local.vpc_az
  vpc_public_subnet = local.vpc_public_subnet
  local_machine_ip  = local.local_machine_ip
  ssh_key           = local.ssh_key
  instance_type     = local.instance_type
  server_name       = local.server_name
}
