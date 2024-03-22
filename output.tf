output "public_ip" {
  value = aws_lightsail_instance.terraform-Server.public_ip_address
}

output "access_url" {
  value = "http://${aws_lightsail_instance.terraform-Server.public_ip_address}"
}