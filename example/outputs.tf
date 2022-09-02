output "public_ip" {
  value = module.nginx_server.public_ip
}

output "public_dns" {
  value = module.nginx_server.public_dns
}
