data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "tolus-bucket"
    key    = "networking/terraform.tfstate"
    region = "eu-west-1"
  }
}

resource "aws_instance" "system" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  key_name        = var.ec2_key_name
  security_groups = [data.terraform_remote_state.network.outputs.aws_security_group]
  subnet_id       = data.terraform_remote_state.network.outputs.aws_subnet
  count           = var.ec2_count
  user_data       = <<EOF
    #!/bin/bash
    sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
  EOF

  tags = var.ec2_default_tags
}