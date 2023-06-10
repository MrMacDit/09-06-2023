resource "aws_instance" "system" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  key_name        = var.ec2_key_name
  security_groups = [aws_security_group.tolulopes_security_group.name]
  count = var.ec2_count
  user_data       = <<EOF
    #!/bin/bash
    sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
  EOF

  tags = var.ec2_default_tags
}