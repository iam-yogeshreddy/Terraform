variable "kubernetes_version" {
  default     = "1.30"
  description = "Kubernetes version supported by EKS"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "Default CIDR range of the VPC"
}

variable "aws_region" {
  default     = "ap-south-1"
  type        = string
  description = "AWS region to deploy resources"
}
