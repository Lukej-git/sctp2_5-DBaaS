terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"
    key    = "luke-ce9-2_5-DBaaS.tfstate"
    region = "us-east-1"
  }
}