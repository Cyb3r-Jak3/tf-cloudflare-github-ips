data "onepassword_vault" "code_secrets_vault" {
  name = "code_secrets"
}

data "onepassword_item" "cloudflare_creds" {
  vault = data.onepassword_vault.code_secrets_vault.uuid
  title = "Cloudflare Global Creds"
}

data "github_ip_ranges" "ips" {}