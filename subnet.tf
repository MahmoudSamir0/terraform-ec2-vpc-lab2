resource "aws_subnet" "mysub" {
  vpc_id                  = aws_vpc.myvpc.id
  count                   = 2
  cidr_block              = var.subnet_id[count.index]
  map_public_ip_on_launch = var.true-and-false[count.index]
  tags = {
    Name = var.subnet-name[count.index]
  }
}
