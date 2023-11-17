# terraform-test
Testing Terraform With GitHub Actions

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.17.0 |
| <a name="requirement_minikube"></a> [minikube](#requirement\_minikube) | 0.3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_minikube"></a> [minikube](#provider\_minikube) | 0.3.5 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cert_manager"></a> [cert\_manager](#module\_cert\_manager) | terraform-iaac/cert-manager/kubernetes | n/a |

## Resources

| Name | Type |
|------|------|
| [minikube_cluster.test](https://registry.terraform.io/providers/scott-the-programmer/minikube/0.3.5/docs/resources/cluster) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->