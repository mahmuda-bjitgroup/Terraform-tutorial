# resource "aws_eip" "pubsub-1-eip" {
#   instance = aws_instance.tf_ec2.id
#   domain   = "vpc"

#   #Meta argument
#   #   depends_on = [aws_internet_gateway.gw]
# }