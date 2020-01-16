resource "aws_subnet" "public_subnet" {

  count = length(var.public_subnets_cidr)
  vpc_id     = var.vpc_id
  cidr_block = "var.public_subnets_cidr[count.index]"
  availability_zone = "${var.region}${var.AZs[count.index]}"

  
}