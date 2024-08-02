module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.20.0"
  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version
  #vpc_id          = data.aws_vpc.sre_vpc.id   
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnet_ids # ou public_subnet_ids se necessário

  enable_irsa = true

  tags = {
    cluster = var.cluster_name
  }

  eks_managed_node_group_defaults = {
    ami_type               = "AL2_x86_64"
    instance_types         = ["t3.medium"]
    vpc_security_group_ids = [aws_security_group.node_group.id]
  }

  eks_managed_node_groups = {

    node_group = {
      min_size     = 1
      max_size     = 4
      desired_size = 2
    }
  }
}
