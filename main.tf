resource "aws_instance" "ec2_instances" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name


# count is knows as a meta-argument that allows you to create multiple 
# instances of a resource based on the value provided. 
# In this case, it will create the number of EC2 instances specified 
# by the variable instance_count.

  tags = {
    Name = "Terraform-EC2-${count.index + 1}"
  }
}
