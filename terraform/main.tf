terraform {
  required_version = ">= 1.0"

  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.11.0"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "devops" {
  name = var.cluster_name

  wait_for_ready = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
    }

    dynamic "node" {
      for_each = range(var.node_count)

      content {
        role = "worker"
      }
    }
  }
}


