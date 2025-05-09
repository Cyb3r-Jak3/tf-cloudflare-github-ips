terraform {
    backend "s3" {
    bucket  = "terraform-states"
    key     = "cloudflare-github-ips/terraform.tfstate"
    region  = "us-east-1"
    profile = "r2-terraform-states"
    endpoints = {
      s3 = "https://8be772befd147a8df540aae0fa15c047.r2.cloudflarestorage.com"
    }
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.43.0"
    }
    github = {
      source  = "integrations/github"
      version = "<7"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_list" "github_actions_ips" {
  account_id  = var.account_id
  name        = "github_actions_ips"
  description = "IPs for GitHub Actions"
  kind        = "ip"
  dynamic "item" {
    for_each = data.github_ip_ranges.ips.actions
    content {
      value {
        ip = item.value
      }
    }
  }
}