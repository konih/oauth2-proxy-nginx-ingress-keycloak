terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.10.1"
    }
  }
}


provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "random" {
}
