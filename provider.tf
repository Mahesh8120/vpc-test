terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }

  backend "s3" {
    bucket         = "pjdevops-remote"
    key            = "vpc-test"
    region         = "us-east-1"
    dynamodb_table = "pjdevops-remote-locking"
  }

}
provider "aws" {
  region = "us-east-1"
}