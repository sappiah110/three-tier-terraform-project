# configure aws provider
provider "aws" {
  region  = "us-west-1"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "claudedevops-terraform-remote-state"
    key     = "my-terraform.tfstate.dev"
    region  = "us-west-1"
    profile = "terraform-user"
  }
}
