resource "aws_instance" "infra" {
  ami           = "ami-0fed63ea358539e44"
  instance_type = "t2.small"
  metadata_options {
    http_tokens = "enabled"
  }
}