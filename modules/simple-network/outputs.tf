output "custom_vpc" {
  description = "Array containing the full resource object and attributes for all endpoints created"
  value       = module.vpc
}

output "nginx_sg" {
  description = "Security group that has to contain the Nginx Server"
  value       = aws_security_group.sg_nginx_server
}
