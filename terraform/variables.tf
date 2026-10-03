variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
}

variable "node_count" {
  description = "Quantidade de workers do cluster"
  type        = number
}

variable "cpu" {
  description = "CPU destinada ao ambiente"
  type        = number
}

variable "memory" {
  description = "Memória destinada ao ambiente em GB"
  type        = number
}

