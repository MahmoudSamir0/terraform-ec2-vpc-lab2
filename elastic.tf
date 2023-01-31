resource "aws_eip" "elastic_id" {
  vpc = true
  depends_on = [
    aws_internet_gateway.it
  ]
}