 resource "aws_route_table" "private_rt" {
   vpc_id = "${aws_vpc.vpc.id}"
   route {
   cidr_block = "0.0.0.0/0"
   gateway_id = "${aws_nat_gateway.test-natgw.id}"
   }
 }