resource "aws_instance" "app_server" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-bootcamp.id}", "${aws_security_group.ingress-http-bootcamp.id}"]
  tags          = {
      Name = "app_server"
  }
  subnet_id = "${aws_subnet.subnet-uno.id}"
}
resource "aws_instance" "ansible" {
  ami           = "${var.ami_id_tower}"
  instance_type = "t2.medium"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-bootcamp.id}", "${aws_security_group.ingress-http-bootcamp.id}"]
  tags          = {
      Name = "ansible"
  }
  subnet_id = "${aws_subnet.subnet-uno.id}"
}
resource "aws_instance" "nexus" {
  ami           = "${var.ami_id}"
  instance_type = "t2.medium"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-bootcamp.id}", "${aws_security_group.ingress-http-bootcamp.id}"]
  tags          = {
      Name = "nexus"
  }
  subnet_id = "${aws_subnet.subnet-uno.id}"
}
resource "aws_instance" "jenkins" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  key_name = "${var.ami_key_pair_name}"
  security_groups = ["${aws_security_group.ingress-all-bootcamp.id}", "${aws_security_group.ingress-http-bootcamp.id}"]
  tags          = {
      Name = "jenkins"
  }
  subnet_id = "${aws_subnet.subnet-uno.id}"
}