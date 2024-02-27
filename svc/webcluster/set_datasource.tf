data "aws_vpc" "aw_d-vpc-default" {
  default = true
}

data "aws_subnets" "aw_d-subn-vpc-default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.aw_d-vpc-default.id]
  }
}

data "terraform_remote_state" "aw_d-tfstateremo-db" {
  backend = "s3"

  config = {
    bucket = var.db_remote_state_bucket
    key    = var.db_remote_state_key
    region = "us-east-2"
  }
}