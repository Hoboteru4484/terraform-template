# ---------------------------
# Terraform configration
# ---------------------------
terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}
# ---------------------------
# Provider
# ---------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# ---------------------------
# Variables
# ---------------------------
variable "project" {
  type        = string
  default     = ""
  description = "project name"
}

variable "environment" {
  type        = string
  default     = ""
  description = "environment name"
}
