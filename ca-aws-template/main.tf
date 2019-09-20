provider "aws" {
  region     = "ap-southeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "cda_instance" {
  ami                    = "${var.aws_ami}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-fef1f999"]
  
  tags {
    Name = "cda_instance"
  }
}

output "public_port" {
  value = "${aws_instance.cda_instance.public_ip}"
}
