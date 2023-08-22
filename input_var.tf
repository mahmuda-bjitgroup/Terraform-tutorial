variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type        = string
  default     = "us-east-1"
}


# variable "ec2_ami_id" {
#   type    = string
#   default = "ami-08a52ddb321b32a8c"
#   validation {
#     condition     = length(var.ec2_ami_id) > 4 && substr(var.ec2_ami_id, 0, 4) == "ami-"
#     error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
#   }
# }

# variable "ec2_instance_count" {
#   type = number
#     default = 1
# }


#promt example
variable "ec2_instance_type" {
  description = "EC2 instance using variable"
  type        = string
  # type = list(string)
  # default = [ "t3.micro", "t3.small", "t3.large" ]
  default = "t3.micro" # -var cli
}

# variable "ec2_instance_tags" {
#   description = "EC2 instance tags"
#   type        = map(string)
#   default = {
#     "Name" = "ec2-web"
#     "Tier" = "Web"
#   }
# }

# variable "ec2_instance_type_map" {
#   description = "EC2 instance type"
#   type        = map(string)
#   default = {
#     "small-apps"  = "t3.micro"
#     "medium-apps" = "t3.medium"
#     "big-apps"    = "t3.large"
#   }
# }

# variable "db_useranme" {
#   description = "AWS RDS Database Administrator Username"
#   type        = string
#   sensitive   = true
# }

# variable "db_password" {
#   description = "AWS RDS Database Administrator Password"
#   type        = string
#   sensitive   = true
# }

# variable "app_name" {
#   description = "Application name"
#   type        = string
# }

# variable "environment_name" {
#   description = "Environment name"
#   type        = string
# }