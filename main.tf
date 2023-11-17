terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.17.0"
    }
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.3.5"
    }
  }
}

provider "kubernetes" {
    config_path    = "~/.kube/config"
    config_context = "minikube"
}

provider "minikube" {
  kubernetes_version = "v1.26.10"
}

resource "minikube_cluster" "test" {
  vm           = true
  cluster_name = "terraform-provider-minikube-test"
  cni          = "bridge" # Allows pods to communicate with each other via DNS
  embed_certs  = true
  memory       = "4g"
  addons = [
    "dashboard",
    "default-storageclass",
    "ingress",
    "storage-provisioner"
  ]
}

module "cert_manager" {
  source        = "terraform-iaac/cert-manager/kubernetes"

  cluster_issuer_email                   = "ckimball@korewireless.com"
  cluster_issuer_name                    = "cert-manager-global"
  cluster_issuer_private_key_secret_name = "cert-manager-private-key"
}
