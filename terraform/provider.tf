provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project = "CloudOpsInsight"
      Owner   = "cloudops-admin"
      Env     = "Development"
    }
  }
}
