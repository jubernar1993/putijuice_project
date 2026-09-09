data "aws_ami" "puti_juice_ami" {

  filter {
    name   = "name"
    values = ["putijuice_image*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


