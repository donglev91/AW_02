provider "aws" {
  region     = "ap-southeast-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

variable "aws_access_key" {
  default = "your aws access key"
}

variable "aws_secret_key" {
  default = "your aws secret key"
}

provider "cda" {
  cda_server     = "http://localhost/cda"
  user           = "100/AUTOMIC/AUTOMIC"
  password       = "automic"  
	
  default_attributes = { // default_attributes can be used to set the 'folder' and 'owner' attributes globally for the template.
    folder = "DEFAULT"
    owner  = "100/AUTOMIC/AUTOMIC"
  }
}
