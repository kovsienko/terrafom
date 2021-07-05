resource "aws_s3_bucket" "s3test992334441" {
  bucket = "s3test992334441"
  acl    = "private"

  versioning {
   enabled = true  
  }
  tags = {
   Name  = "s3test992334441"
  
 }
}


resource "aws_dynamodb_table" "dynamodb-test" {
  name           = "dynamodb"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"
  
   
    attribute {
     name = "LockID"
     type = "S"
  }
     attribute {
     name = "TopScore"
     type = "N"
  }

    ttl {
     attribute_name = "TimeToExist"
     enabled        = false
  }
    global_secondary_index {
     name               = "dynamodb"
     hash_key           = "LockID"
     range_key          = "TopScore"
     write_capacity     = 10
     read_capacity      = 10
     projection_type    = "INCLUDE"
     non_key_attributes = ["UserId"]
  }


}
  