terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "5.98.0"
        }
    }
} 

provider "aws" {
    alias = "dev"
    profile = "dev"
}

provider "aws" {
    alias = "prod"
    profile = "prod"
}