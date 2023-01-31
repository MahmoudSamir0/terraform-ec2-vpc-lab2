variable "vpc-name" {
  type = string

}
variable "subnet-name" {
  type = list(any)
}
variable "subnet_id" {
  type = list(any)
}
variable "ec2-ami" {
  type = string

}
variable "ec2-type" {
  type = string
}
variable "ec2-key" {
  type = string
}
variable "nat-name" {
  type = string

}
variable "route-nat" {
  type = string
}
variable "rout-public" {
  type = string
}
variable "internet-get" {
  type = string
}

variable "true-and-false" {
  type = list(any)
}