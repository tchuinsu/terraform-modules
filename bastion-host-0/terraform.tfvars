aws_region                    = "us-east-1"
ec2_instance_ami              = "aws_ami.amzlinux2"
ec2_instance_type             = "t2.micro"
sg_name                       = "test"
instance_name                 = "test"
vpc_id                        = "aws_vpc.adl_eks_vpc"
subnet_id                     = "aws_subnet.eks_public_subnet_01"
root_volume_size              = 10
instance_count                = 1
enable_termination_protection = false
ec2_instance_key_name         = "jenkins-key2"
allowed_ports = [
  22,
  #80,
  #8080
]
tags = {
  "id"             = "1986"
  "owner"          = "DevOps Easy Learning"
  "teams"          = "DEL"
  "environment"    = "dev"
  "project"        = "coubis"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}