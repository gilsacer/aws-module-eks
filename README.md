# aws-module-eks
EKS infra IAC - AWS

## Diagram

<img src="AWS-module-eks.png" width="500">

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.11.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.97.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.36.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR Block to be used for VPC | `string` | `"10.200.0.0/16"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to the name the resources | `string` | `"DevOps-EKS"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->