output "ec2-public-ip" {
  value = aws_instance.mypub-ec2.public_ip
}

output "ec2-private-ip" {
  value = aws_instance.myprivetsub-ec2.private_ip
}
