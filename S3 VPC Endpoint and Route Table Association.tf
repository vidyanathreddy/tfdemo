resource "aws_vpc_endpoint" "s3" {
  vpc_id       = "${aws_vpc.main.id}"
  service_name = "com.amazonaws.ap-southeast-1.s3"
}


resource "aws_vpc_endpoint_route_table_association" "endpoint-route-table-association" {
  route_table_id  = "${aws_route_table.private-route-table.id}"
  vpc_endpoint_id = "${aws_vpc_endpoint.s3.id}"
}
