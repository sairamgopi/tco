resource "aws_route_table" "route_table_private" {
  
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    
  }

 
  tags = {
    Name = name of rta
  }
}