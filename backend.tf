terraform {
  backend "s3" {
    bucket  = "jcde"
    key     = "terraform/demo_project_module/tfstate"
    region  = "ap-southeast-1"
  }
}