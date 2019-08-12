resource "aws_subnet" "subnet-uno" {
  cidr_block = "${cidrsubnet(aws_vpc.bootcamp-env.cidr_block, 0, 0)}"
  vpc_id = "${aws_vpc.bootcamp-env.id}"
  availability_zone = "us-east-1a"
}
resource "aws_route_table" "route-table-bootcamp-env" {
  vpc_id = "${aws_vpc.bootcamp-env.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.bootcamp-env-gw.id}"
  }
  tags = {
    Name = "bootcamp-env-route-table"
  }
}
resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.subnet-uno.id}"
  route_table_id = "${aws_route_table.route-table-bootcamp-env.id}"
}