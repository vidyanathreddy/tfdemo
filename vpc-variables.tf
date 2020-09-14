variable "access_key" {}
variable "secret_key" {}

variable "region" {
  description = "VPC region"
  default     = "ap-southeast-1"
}
variable "az1" {
  description = "Avaialbility Zone1"
  default     = "ap-southeast-1a"
}

variable "az2" {
  description = "Avaialbility Zone2"
  default     = "ap-southeast-1b"
}
variable "vpc_cidr" {
  description = "CIDR of the VPC"
  default     = "172.0.0.0/16"
}
