resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.project1.id
}

resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public1.id
}