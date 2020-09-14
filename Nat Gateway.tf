resource "aws_eip" "natIP" {
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = "${aws_eip.natIP.id}"
  subnet_id     = "${aws_subnet.subnet2.id}"

  tags = {
    Name = "NAT Gateway"
  }
}
