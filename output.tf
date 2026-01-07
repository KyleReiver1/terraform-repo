output "kyle-vm-publicIP" {
  value = aws_instance.example.public_ip
}

output "kyle-vm-id" {
  value = aws_instance.example.id
}