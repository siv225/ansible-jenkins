terraform {
  backend "s3" {
    bucket = "devops-2021-1234578"
    key    = "demo/instance"
    region = "us-east-2"
  }
}
