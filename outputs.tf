output "public_ip" {
  value = aws_instance.nginx_server.public_ip
}

output "public_dns" {
  value = aws_instance.nginx_server.public_dns
}
