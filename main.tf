variable "ssh_key" {
  type = "string"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
  ami           = "ami-d4f7ddbe"
  instance_type = "m3.medium"
  key_name      = "${var.ssh_key}"
}

output "public_ip" {
  value = "${aws_instance.test.public_ip}"
}
