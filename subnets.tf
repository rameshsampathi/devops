resource "aws_subnet" "public_subnets" {
         count = 3
 # count = length(var.subnets_cidr)
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${element(var.public_subnets_cidr,count.index)}"
  availability_zone = "${element(var.azs,count.index)}"
  
  tags = {
    Name = "Subnet-${count.index+1}"
  }
}
