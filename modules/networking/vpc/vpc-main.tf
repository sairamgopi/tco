resource "aws_vpc" "vpc" {

  cidr_block       = var.vpc_cidr
  instance_tenancy = "dedicated"
  tags = {
  
    Name = "vpc-${join("",[for i in split("-",var.region): substr(i,0,1)])}-${var.env}"
  }

}