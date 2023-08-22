# resource "aws_s3_bucket" "tf_s3" {

#   for_each = {
#     dev = "my-dapp-bucket-keya"
#     # qa   = "my-qapp-bucket-keya"
#     # stag = "my-sapp-bucket-keya"
#     prod = "my-papp-bucket-keya"
#   }
#   #   each.key
#   #   each.value
#   # bucket = each.value #corrected code
#   bucket = "${each.key}-${each.value}"
#   # acl    = "private"



#   # tags = {
#   #   # Name        = "My bucket"
#   #   Environment = each.key
#   #   bucketname  = "${each.key}-${each.value}"
#   #   eachvalue   = each.value
#   # }
# }

# #adding controller_access
# resource "aws_s3_bucket_ownership_controls" "example" {
#   for_each = {
#     dev = "my-dapp-bucket-keya"
#     # qa   = "my-qapp-bucket-keya"
#     # stag = "my-sapp-bucket-keya"
#     prod = "my-papp-bucket-keya"
#   }
#   bucket = "${each.key}-${each.value}"        #Required
#   rule {                                      #Required
#     object_ownership = "BucketOwnerPreferred" #Required
#   }
#   depends_on = [aws_s3_bucket.tf_s3]
# }

# resource "aws_s3_bucket_acl" "tf_s3_acl" {
#   depends_on = [aws_s3_bucket_ownership_controls.example]


#   for_each = {
#     dev = "my-dapp-bucket-keya"
#     # qa   = "my-qapp-bucket-keya"
#     # stag = "my-sapp-bucket-keya"
#     prod = "my-papp-bucket-keya"
#   }

#   bucket = "${each.key}-${each.value}"
#   acl    = "private"
# }

# # ---


# # resource "aws_s3_bucket_acl" "example" {
# #   depends_on = [aws_s3_bucket_ownership_controls.example]

# #   bucket = aws_s3_bucket.example.id
# #   acl    = "private"
# # }

# local variable example

# resource "aws_s3_bucket" "tf_s3" {

#   bucket = local.bucket-name

#   tags = {
#     Name        = local.bucket-name
#     Environment = var.environment_name
#   }
# }

# #adding controller_access
# resource "aws_s3_bucket_ownership_controls" "example" {

#   bucket = local.bucket-name        #Required
#   rule {                                      #Required
#     object_ownership = "BucketOwnerPreferred" #Required
#   }
#   depends_on = [aws_s3_bucket.tf_s3]
# }

# resource "aws_s3_bucket_acl" "tf_s3_acl" {
#   depends_on = [aws_s3_bucket_ownership_controls.example]


#   bucket = local.bucket-name
#   acl    = "private"
# }

# locals {
#   bucket-name = "${var.app_name}-${var.environment_name}-bucket"
# }