variable "ec2_ami" {
  description = "This is a description of AMAZON LINUX AMI"
  type        = string
}

variable "ec2_instance_type" {
  description = "This is a description of INSTANCE TYPE"
  type        = string
}

variable "ec2_key_name" {
  description = "This is a description of KEY NAME"
  type        = string
}

variable "ec2_count" {
  description = "This is a description of KEY NAME"
  type        = number
}

variable "ec2_default_tags" {
  description = "This is a description of DEFAULT TAGS used in describing my machine"
  type        = map(any)
  default = {
    "Name" = "tolulope1"
  }
}