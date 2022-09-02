module "network" {
  source            = "./modules/simple-network"
  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  vpc_az            = var.vpc_az
  vpc_public_subnet = var.vpc_public_subnet
  local_machine_ip  = var.local_machine_ip
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-name"
  public_key = var.ssh_key
}

data "template_file" "user_data" {
  template = file("${abspath(path.module)}/startup.sh")
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "nginx_server" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.deployer.key_name
  subnet_id              = tolist(module.network.custom_vpc.public_subnets)[0]
  vpc_security_group_ids = [module.network.nginx_sg.id]
  user_data              = data.template_file.user_data.rendered

  tags = {
    Name = var.server_name
  }
}
