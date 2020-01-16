 resource "aws_route_table_association" {
   gateway_id     = aws_internet_gateway.foo.id
   route_table_id = aws_route_table.bar.id
 }
 
  tags = {
    Name = 
  }
 }