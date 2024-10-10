terraform {
  required_providers {
    k8s = {
      source  = "hashicorp/kubernetes"
      version = "> 1.12.0, != 1.13.1, < 1.13.3 " // it will download the veersion 1.13.2
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 1.2.0" //It will download the 1.2.4 version
    }
  }
}
