terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }

  }
  
 backend "s3" {

    bucket  = "newprojectt"    //manually created 
    key     = "ecr/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true

    # dynamodb_table = "Terraform_lock"   //manually created 

  }

}