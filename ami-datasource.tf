data "aws_ami" "amzlinux" {
  most_recent = true #To get the recent one always
  owners = ["amazon"]

  filter {
    name = "name"
    # values = ["amzn2-ami-hvm-*"]
    values = [ "al2023-ami-2023*" ]
  }

  filter {
    name = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}