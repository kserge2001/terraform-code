output "lightsail_instance_public_ip" {
  value = aws_lightsail_instance.example.public_ip_address
}