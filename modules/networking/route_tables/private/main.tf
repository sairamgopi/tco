resource "aws_route_table" "route_table_private" {
  
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    
  }

 
  tags = {
    Name = "rtb-${join("",[for i in split("-",var.region): substr(i,0,1)])-$(join("",[element([for i in split("-",var.region):i],2),var.AZs[0]]))}-${var.routetype}-$(var.env)"
  }
}