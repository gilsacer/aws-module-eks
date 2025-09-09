variable "project_name" {
  type        = string
  description = "Project name to be used to the name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to aws resources"
}

variable "oidc" {
  type        = string
  description = "Https URL from oidc provider of the eks cluster"
}