apiVersion = "tf.upbound.io/v1beta1"
kind = "ProviderConfig"
metadata = {
  name = "default"
}
spec = {
  configuration = """\
terraform {
  backend "kubernetes" {
    secret_suffix = "providerconfig-${metadata.name}"
    namespace = "crossplane-system"
    in_cluster_config = true
  }

  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "random" {
  # Configuration options
}
"""
}
