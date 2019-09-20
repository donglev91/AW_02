provider "aws" {
  region     = "ap-southeast-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "cda_instance" {
  ami                    = "${var.aws_ami}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-fef1f999"]
}

output "public_port" {
  value = "${aws_instance.cda_instance.public_ip}"
}

variable "access_key" {
  default = "your aws access key"
}

variable "secret_key" {
  default = "your aws secret key"
}

variable "aws_ami" {
	default = "ami-20dd9172"
}

variable "aws_security_group_id" {
	default = "sg-0cd9d595d48c30e08"
}
