variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  description = "Existing EC2 key pair name"
  type        = string
  default     = "windows-1"
}


variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"  # ap-south-1 Ubuntu 22.04
}
