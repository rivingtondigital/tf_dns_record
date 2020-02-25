# route53 record variables

variable "project_domain"{}
variable "fqdn"{}

variable "ttl"{
  default = 30
}

variable "records"{
  default = []
}

variable "target_ip"{}
