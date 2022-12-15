resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "Loadbalancer-RouteTable"
  }
}
resource "aws_route_table_association" "sub1asso" {
  route_table_id = aws_route_table.routetable.id
  subnet_id = aws_subnet.subnet1.id
}
resource "aws_route_table_association" "sub2asso" {
  route_table_id = aws_route_table.routetable.id
  subnet_id = aws_subnet.subnet2.id
}
resource "aws_route" "route" {
  route_table_id = aws_route_table.routetable.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}