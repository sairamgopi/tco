resource "aws_subnet" "private_subnet" {

  count = length(keys(var.private_subnets_cidr))
  
  vpc_id     = var.vpc_id 
  cidr_block = lookup(var.private_subnets_cidr,keys(var.private_subnets_cidr)[count.index])
  availability_zone = split(".",keys(var.private_subnets_cidr)[count.index])[1]
  
  tags = {
    Name = "subnet-${join("",[for i in split("-",var.region): substr(i,0,1)])}-${split("-",split(".",keys(var.private_subnets_cidr)[count.index])[1])[2]}-${var.route_type}-${split(".",keys(var.private_subnets_cidr)[count.index])[0]}-${var.env}"
  }

  
}