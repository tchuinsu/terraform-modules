resource "aws_instance" "vms" {
  count                   = var.instance_count
  ami                     = data.aws_ami.amzlinux2.id
  instance_type           = var.ec2_instance_type
  key_name                = var.ec2_instance_key_name
  vpc_security_group_ids  = [aws_security_group.sg.id]
  subnet_id               = data.aws_subnet.eks_public_subnet_01.id
  disable_api_termination = var.enable_termination_protection

  root_block_device {
    volume_size = var.root_volume_size
  }

  tags = merge(var.tags, {
    Name = format("%s-%s-%s-${var.instance_name}-${count.index + 1}", var.tags["id"], var.tags["environment"], var.tags["project"])
    },
  )
}
