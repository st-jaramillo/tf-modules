data "aws_vpc" "ds_vpc-default" {
  default = true
}

data "aws_subnets" "ds_subn-vpc-default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.ds_vpc-default.id]
  }
}

data "terraform_remote_state" "ds-tfstateremo-db" {
  backend = "s3"

  config = {
    bucket = var.db_remote_state_bucket
    key    = var.db_remote_state_key
    region = "us-east-2"
  }
}