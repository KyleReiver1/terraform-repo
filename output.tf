output "kyle-vm-publicIP" {
  value = aws_instance.example.*.public_ip
}

output "kyle-vm-id" {
  value = [ for i in aws_instance.example: i.id]
}