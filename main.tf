resource "aws_instance" "ins1" {
  ami                     = "ami-0fb04413c9de69305"
  instance_type           = "t2.micro"
  key_name = "terraform-2"
  tags = {
    Name = "ins1"
  }
}

resource "aws_instance" "ins2" {
  ami                     = "ami-0fb04413c9de69305"
  instance_type           = "t2.micro"
  key_name = "terraform-2"
  tags = {
    Name = "ins2"
  }
}

output "public_addr1" {
  value = aws_instance.ins1.public_ip
}

output "public_addr2" {
  value = aws_instance.ins2.public_ip
}
