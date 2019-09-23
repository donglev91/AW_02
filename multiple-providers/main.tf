provider "aws" {
	region     = "ap-southeast-1"
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
}

provider "jira" {
}

provider "cda_provider" {
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
