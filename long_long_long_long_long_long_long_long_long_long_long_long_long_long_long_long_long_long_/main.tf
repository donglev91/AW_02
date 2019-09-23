provider "aws" {
	region     = "ap-southeast-1"
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
}

provider "jira" {
}

provider "cda_provider" {
}

provider "cda_provider--------------------------------------------------long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_" {
}

provider "vsphere" {
}

provider "docker" {
  host = "http://10.243.41.201:4243"
}

resource "docker_container" "ca-sample" {
  name  = "${random_string.random_name.result}"
  image = "${docker_image.dummy_image.latest}"
  entrypoint = ["/bin/sleep"]
  command = [ "1d" ]
}

resource "docker_image" "dummy_image" {
  name = "busybox:latest"
}

resource "random_string" "random_name" {
	length  = 5
	special = false
	lower   = false
}

variable "cda_host" {
	default = "http://10.243.44.139/cda" # format <http or https>://<cda_host or cda_ip>/cda_name---------------
}

variable "cda_user" {
	default = "100/AUTOMIC/AUTOMIC"
}

variable "cda_pass" {
	default = "automic"
}

variable "cda_folder" {
	default = "DEFAULT"
}

variable "depltarget_prefix" {
	default = "Terraform_Target_"
}

variable "environment_prefix" {
	default = "Terraform_Env_"
}

variable "login_object_prefix" {
	default = "LoginObjectForTerraformTarget_"
}

variable "profile_prefix" {
	default = "Terraform_Profile_"
}

variable "application" {
	default = "Terraform App.1"
}

variable "package" {
	default = "Pack Web"
}

variable "workflow" {
	default = "Deploy"
}

variable "a1" {
	default = "Deploy"
}

variable "a2" {
	default = "Deploy"
}

variable "a3" {
	default = "long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_long_"
}
