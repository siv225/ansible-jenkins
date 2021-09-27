resource "aws_instance" "devops-2021" {
  ami           = "ami-00dfe2c7ce89a450b"
  instance_type = "t2.micro"
  count = 6
  associate_public_ip_address = true
  key_name = "Myrsakey"
  tags = {
    Name = "siva-terraform"
  }
}
