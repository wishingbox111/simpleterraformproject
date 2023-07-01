#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.0"
#    }
#  }
#}

#output "log" {
#  value = "${yamldecode(file("test.yml"))["a"]}"
#}

#need this code??
#locals {
#  config  = yamldecode(file("${path.module}/.github/workflows/pipeline.yml"))
#}
#
#locals {
#  config  = yamldecode(file("${.github/workflows}/pipeline.yml"))
#}



#resource "tls_private_key" "example" {
#  algorithm   = "ECDSA"
#  ecdsa_curve = "P384"
#} #from https://registry.terraform.io/providers/hashicorp/tls/3.0.0/docs/resources/private_key


resource "aws_instance" "instances_ec_ws1" {
  ami           = "ami-0fc61db8544a617ed"  # Amazon Linux 2 LTS
  instance_type = "t2.micro"
  count         = 1

  tags = {
    Name = "<enchen> EC2 Instance ${count.index + 1}"
  }
}
