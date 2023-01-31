resource "aws_instance" "mypub-ec2" {
  ami                         = var.ec2-ami
  instance_type               = var.ec2-type
  key_name                    = var.ec2-key
  subnet_id                   = aws_subnet.mysub[0].id
  security_groups             = [aws_security_group.sg.id]
  associate_public_ip_address = true
  user_data                   = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOF

}

resource "aws_instance" "myprivetsub-ec2" {
  ami             = var.ec2-ami
  instance_type   = var.ec2-type
  key_name        = var.ec2-key
  subnet_id       = aws_subnet.mysub[1].id
  security_groups = [aws_security_group.sg.id]
  user_data       = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOF
  depends_on = [
    aws_nat_gateway.gw
  ]
}