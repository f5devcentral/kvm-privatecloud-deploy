data "tfe_outputs" "infra" {
  organization = "knowbase"
  workspace = "onewaap-infra"
}
data "tfe_outputs" "eks" {
  organization = "knowbase"
  workspace = "xc-nap-eks"
}
data "tfe_outputs" "nap" {
  organization = "knowbase"
  workspace = "xc-nap-kic"
}
data "aws_eks_cluster_auth" "auth" {
  name = data.tfe_outputs.eks.values.cluster_name
}
/*
data "kubernetes_service_v1" "nginx-service" {
  metadata {
    name = format("%s-%s",local.project_prefix, "nginx-ingress")
    namespace = "nginx-ingress"
  }
}
*/