resource "aws_internet_gateway" "IGW" {
  vpc_id = "${aws_vpc.default.id}"

  tags = {
    Name = "${var.IGW_name}"
  }
}