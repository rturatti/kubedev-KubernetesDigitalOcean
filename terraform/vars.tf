# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

variable "k8s_name" {
  default = "iniciativa"
  type    = string
}

variable "do_region" {
  default = "nyc1"
  type    = string
}

variable "k8s_name_pool" {
  default = "workers"
  type    = string
}