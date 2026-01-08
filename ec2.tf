resource "aws_instance" "example" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"

  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  
  tags = {
    "Name" = "kyle-vm1"
  }
}

