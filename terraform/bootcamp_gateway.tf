resource "aws_internet_gateway" "bootcamp-env-gw" {
  vpc_id = "${aws_vpc.bootcamp-env.id}"
  tags = {
    Name = "bootcamp-env-gw"
  }
}