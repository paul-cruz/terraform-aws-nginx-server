variable "ssh_key" {
  type        = string
  description = "Public SSH key to connect the Instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 machine"
}

variable "server_name" {
  type        = string
  description = "Name for the nginx server"
}

variable "vpc_name" {
  type        = string
  description = "Name for the custom VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "Cidr to configure in the VPC"
}

variable "vpc_az" {
  type        = string
  description = "Name of the Availability Zone to create the VPC"
}

variable "vpc_public_subnet" {
  type        = string
  description = "Cidr for the public subnet to host the server"
}

variable "local_machine_ip" {
  type        = string
  description = "Your local machine ip to connect via SSH to the server"
}
