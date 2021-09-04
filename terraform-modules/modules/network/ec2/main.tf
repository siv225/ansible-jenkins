resource "aws_security_group" "terraform_sg" {
  name        = "terraform_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.aws_vpc_id
}
resource "aws_instance" "devops-2021" {
  ami           = "ami-00dfe2c7ce89a450b"
  instance_type = "t2.micro"
  count = 1

    network_interface {
    network_interface_id = aws_network_interface.demo_interface.id
    device_index         = 0
  }

 }

resource "aws_network_interface" "demo_interface" {
  subnet_id   = var.aws_sub1
#  private_ips = ["10.0.0.10"]
  security_groups  = [aws_security_group.terraform_sg.id]
  depends_on = [aws_security_group.terraform_sg]

  tags = {
    Name = "primary_network_interface"
  }
}
