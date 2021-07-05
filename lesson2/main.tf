terraform {
  backend "s3" {
    bucket = "s3test992334441"
    key    = "aws/devops/teraform_states/terraform.tfstate"
    encrypt = true
    region = "us-east-2"
    dynamodb_table = "dynamodb"
  }  
 required_version = ">= 0.13"  
   required_providers {
     aws = {
      version = "~> 3.0"
    }
  }
  
}