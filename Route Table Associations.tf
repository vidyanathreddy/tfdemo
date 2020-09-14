resource "aws_route_table_association" "public-rt-association-1" {
  subnet_id      = "${aws_subnet.subnet1.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}
resource "aws_route_table_association" "public-rt-association-2" {
  subnet_id      = "${aws_subnet.subnet2.id}"
  route_table_id = "${aws_route_table.public-route-table.id}"
}

resource "aws_route_table_association" "private-rt-association-1" {
  subnet_id      = "${aws_subnet.subnet3.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"
}
resource "aws_route_table_association" "private-rt-association-2" {
  subnet_id      = "${aws_subnet.subnet4.id}"
  route_table_id = "${aws_route_table.private-route-table.id}"
}
