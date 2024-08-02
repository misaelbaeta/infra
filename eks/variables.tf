variable "AWS_REGION" {
  default     = "us-east-1"
  description = "aws region"
}

variable "cluster_name" {
  default = "sre"
}
variable "kubernetes_version" {
  default     = "1.30"
  description = "kubernetes version"
}
