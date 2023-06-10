variable "ec2_ami" {
  description = "This is a description of AMAZON LINUX AMI"
  type        = string
  #   default = "ami-04f7efe62f419d9f5"
}

variable "ec2_instance_type" {
  description = "This is a description of INSTANCE TYPE"
  type        = string
  #   default = "t2.micro"
}

variable "ec2_key_name" {
  description = "This is a description of KEY NAME"
  type        = string
  #   default = "lesson1"
}

variable "ec2_default_tags" {
  description = "This is a description of DEFAULT TAGS used in describing my machine"
  type        = map(any)
  default = {
    "Name" = "tolulope1"
  }
}