variable "vr_udbadm" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "vr_pdbadm" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "vr_env" {
  description = "Define environment"
  type        = string
}

variable "vr_engine" {
  description = "Define engine"
  type        = string
}

variable "vr_allocated_storage" {
  description = "Define allocated_storage"
  type        = number
}

variable "vr_instance_class" {
  description = "Define instance_class"
  type        = string
}

variable "vr_db_name" {
  description = "Define db_name"
  type        = string
}