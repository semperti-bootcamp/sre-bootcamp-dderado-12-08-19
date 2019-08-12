resource "aws_vpc" "bootcamp-env" {
  cidr_block = "10.0.0.0/24"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "bootcamp-env"
  }
}
resource "aws_eip" "ip-bootcamp-env-ansible" {
  instance = "${aws_instance.ansible.id}"
  vpc      = true
}
resource "aws_eip" "ip-bootcamp-env-app_server" {
  instance = "${aws_instance.app_server.id}"
  vpc      = true
}
resource "aws_eip" "ip-bootcamp-env-nexus" {
  instance = "${aws_instance.nexus.id}"
  vpc      = true
}
resource "aws_eip" "ip-bootcamp-env-jenkins" {
  instance = "${aws_instance.jenkins.id}"
  vpc      = true
}