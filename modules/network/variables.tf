variable "project_name" {
  type        = string
  description = "Project name to be used to the name the resources"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added to aws resources"
}
variable "cidr_block" {
  type        = string
  description = "Networking CIDR Block to be used for VPC"
  default     = "10.2.0.0/16"
}