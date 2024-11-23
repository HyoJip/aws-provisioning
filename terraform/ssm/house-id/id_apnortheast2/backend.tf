terraform {
  required_version = ">= 1.0.0" # Terraform Version

  backend "s3" {
    bucket         = "house-id-apnortheast2-tfstate" # Set bucket name 
    key            = "house/terraform/ssm/house-id/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock" # Set DynamoDB Table
  }
}
