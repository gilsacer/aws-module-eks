variable "project_name" {
  type        = string
  description = "Project name to be used to the name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to aws resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "subnet to create EKS Cluster AZ-1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "subnet to create EKS Cluster AZ-1b"
}