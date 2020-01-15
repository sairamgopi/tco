#Create a NAT Gateway in public subnet
resource "aws_eip" "nat" {
}

resource "aws_nat_gateway" "test-natgw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.subnet.id}"
}
#Update route table of private subnet and add route for internet traffic (0.0.0.0/0) using NAT Gateway
resource "aws_route_table" "test-private-rt" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.test-natgw.id}"
  }
}
