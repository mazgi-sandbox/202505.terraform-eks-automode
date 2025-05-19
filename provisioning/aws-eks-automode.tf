module "aws-eks-automode" {
  source = "./aws-eks-automode"

  aws_default_region = var.aws_default_region
  k8s_node_count     = 0
  project_unique_id  = "aws-eks-automode"
}
