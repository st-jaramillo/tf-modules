variable "udbadm" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "pdbadm" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}


variable "env" {
  description = "Define environment"
  type        = string
}

variable "engine" {
  description = "Define engine"
  type        = string
}

variable "allocated_storage" {
  description = "Define allocated_storage"
  type        = number
}

variable "instance_class" {
  description = "Define instance_class"
  type        = string
}

variable "db_name" {
  description = "Define db_name"
  type        = string
}