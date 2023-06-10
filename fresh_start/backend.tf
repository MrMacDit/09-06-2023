terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

# Noticed that we used "var.bucket" and "var.key" to input our values? #
# Those states are not variables per-say #
# If you check our variable.tf file, you'd not see any reference of the creation of the variable "bucket" or "key" #
# What simply is happening is that BUCKET doesnt take variable input. Those "var"s you see have a name they are call #
# Remember to ask Segun how it all works #
  backend "s3" {
    bucket = var.bucket
    key    = var.key
    region = "eu-west-1"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}



# resource "aws_vpc" "vcp_tolulope" {
#   cidr_block = "0.0.0.0/16"
# }


