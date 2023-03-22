terraform {
  required_providers {
    twc = {
      source = "tf.timeweb.cloud/timeweb-cloud/timeweb-cloud"
    }
    sops = {
      source  = "carlpett/sops"
      version = "~> 0.5"
    }
  }
  required_version = ">= 1.0.0"
}

