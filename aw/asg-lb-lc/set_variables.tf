variable "vr_srvporthttp" {
  description = "Puerto abierto para solicitudes http"
  type        = number
  default     = 8080
}

variable "vr_image-id" {
  description = "Define image_id"
  type        = string
}

variable "vr_env" {
  description = "Define environment"
  type        = string
}

variable "vr_db-remote-state-bucket" {
  description = "The name of the S3 bucket for the DB remote state"
  type        = string
}

variable "vr_db-remote-state-key" {
  description = "The path for the DB remote state in S3"
  type        = string
}

variable "vr_instance-type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "vr_min-size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "vr_max-size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}