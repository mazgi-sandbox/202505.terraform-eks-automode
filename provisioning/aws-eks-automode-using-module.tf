module "aws-eks-automode-using-module" {
  source = "./aws-eks-automode-using-module"

  aws_default_region = var.aws_default_region
}
