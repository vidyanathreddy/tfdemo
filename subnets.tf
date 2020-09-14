
resource "aws_subnet" "subnet1" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "172.0.0.0/26"
  availability_zone = "${var.az1}"

  tags = {
    Name = "public-subnet-1"
  }

}
resource "aws_subnet" "subnet2" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "172.0.1.0/26"
  availability_zone = "${var.az1}"

  tags = {
    Name = "public-subnet-2"
  }

}

resource "aws_subnet" "subnet3" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "172.0.2.0/26"
  availability_zone = "${var.az2}"

  tags = {
    Name = "private-subnet-1"
  }

}
resource "aws_subnet" "subnet4" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "172.0.3.0/26"
  availability_zone = "${var.az2}"

  tags = {
    Name = "private-subnet-2"
  }

}
