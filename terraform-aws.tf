terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

# ami-0574da719dca65348 --> AMI ID for Canonical, Ubuntu, 22.04 LTS instance Free Tier

resource "aws_instance" "app_server" {
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.micro"

  tags = {
    Name = "AWSAppServerInstance"
  }
}
