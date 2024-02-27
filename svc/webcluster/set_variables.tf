variable "srv_port_http" {
  description = "Puerto abierto para solicitudes http"
  type        = number
  default     = 8080
}

variable "image_id" {
  description = "Define image_id"
  type        = string
}

variable "env" {
  description = "Define environment"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the DB remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the DB remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}