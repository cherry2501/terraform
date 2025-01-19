output "public_ip" {
  value = aws_instance.Terraform.public_ip
  sensitive = false
  description = "Public IP of instance craeted"
}