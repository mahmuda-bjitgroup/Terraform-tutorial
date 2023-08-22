resource "aws_instance" "tf_ec2" {
  ami = data.aws_ami.amzlinux.id
  # count = var.ec2_instance_count
  # instance_type = "t2.micro"
  instance_type = var.ec2_instance_type #promt example
  # instance_type = var.ec2_instance_type_map["small-apps"]
  key_name  = "tf-key"
  subnet_id = aws_subnet.pubsub_1.id
  # vpc_security_group_ids = [aws_security_group.pubsub-1-sg.id]
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  availability_zone      = "us-east-1a"
  user_data              = file("apache-install.sh")
  # tags                   = var.ec2_instance_tags

  tags = {
    Name = "E2-pubsub-1-data-source"
  }

  #here EOF is used but we can also use file function.
  # user_data = <<-EOF
  #             #!/bin/bash
  #             sudo yum update -y
  #             sudo yum install -y httpd
  #             sudo systemctl start httpd
  #             sudo systemctl enable httpd
  #             echo "<h1>Welcome : Output form EOF, using variable from Terraform</h1>" | sudo tee /var/www/html/index.html
  #             EOF

}

# # resource "aws_instance" "tf_ec2" {
# #   ami           = "ami-08a52ddb321b32a8c" #Amazon Linux of us-east-1 region
# #   instance_type = "t2.micro"
# #   # key_name               = "tf-key"
# #   subnet_id = aws_subnet.pubsub_1.id
# #   # count     = 5
# #   # vpc_security_group_ids = [aws_security_group.pubsub-1-sg.id]
# #   # availability_zone      = "us-east-1a"
# #   tags = {
# #     Name = "E2-pubsub-1"
# #     # Name = "E2-pubsub-1-${count.index}"
# #     # tag1 = "New tag"
# #   }

# # }

# # resource "aws_iam_role" "toset_foreach" {
# #     for_each = toset(["TJack", "Tjames", "Tmahhdu"])
# #     name               = each.key
# # }


# # example for toset_foreach
# # variable "tags" {
# #   type    = list(string)
# #   default = ["tag1", "tag2", "tag3"]
# # }

# # resource "aws_instance" "example" {
# #   ami           = "ami-08a52ddb321b32a8c"
# #   instance_type = "t2.micro"

# #   tags = {
# #     for idx, tag in var.tags : "tag${idx + 1}" => tag
# #   }
# # }