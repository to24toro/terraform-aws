data "aws_ami" "linux2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "architecture"
    values = [var.architecture]
  }

  filter {
    name   = "root-device-type"
    values = [var.root_device_type]
  }

  filter {
    name   = "name"
    values = [var.aws_ami_name]
  }

  filter {
    name   = "virtualization-type"
    values = [var.virtualization_type]
  }

  filter {
    name   = "block-device-mapping.volume-type"
    values = [var.block_device_mapping_volume_type]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "bot" {
  ami                    = data.aws_ami.linux2.image_id
  vpc_security_group_ids = [aws_security_group.bot.id]
  subnet_id              = aws_subnet.bot.id
  instance_type          = var.instance_type

  root_block_device {
    volume_size           = var.volume_size_of_block_deivce
    volume_type           = var.volume_type_of_block_device
    delete_on_termination = true
    tags = {
      Name = var.name
    }
  }

  tags = {
    Name = var.name
  }


}

resource "aws_eip" "bot" {
  instance = aws_instance.bot.id
  vpc      = true
}
