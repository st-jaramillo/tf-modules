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
    bucket = var.vr_db-remote-state-bucket
    key    = var.vr_db-remote-state-key
    region = "us-east-2"
  }
}