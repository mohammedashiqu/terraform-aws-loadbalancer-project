resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  cidr_block = "10.0.0.0/25"
  tags = {
    Name = "Loadbalancer_subnet_1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc.id
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  cidr_block = "10.0.0.128/25"
  tags = {
    Name = "Loadbalancer_subnet_2"
  }
}