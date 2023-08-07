terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.10.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
