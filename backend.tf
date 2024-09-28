terraform {
  backend "s3" {
    bucket = "test-tk136"
    key    = "infra/dev/terraformstate"
    region = "us-west-2"
  }
}
