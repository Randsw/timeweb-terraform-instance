variable "ubuntu_version" {
  default     = "22.04"
  description = "Ubuntu version"
}

variable "instance_cpu" {
  default     = "1"
  description = "Number of VCPU"
}

variable "instance_memory" {
  default     = "2048"
  description = "RAM size"
}

variable "instance_location" {
  default     = "pl-1"
  description = "Instance location"
}