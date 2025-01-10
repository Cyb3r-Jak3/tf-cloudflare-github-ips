# Terraform Cloudflare GitHub IPs

This project is designed to update an Cloudflare IP list with the IPs of GitHub Actions runners.
This exists separately from the main project due to issues with Cloudflare Terraform provider higher than v4.43.0. This repo has Cloudflare provider pinned to v4.43.0.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.43.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.43.0 |
| <a name="provider_github"></a> [github](#provider\_github) | 6.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_list.github_actions_ips](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/list) | resource |
| [github_ip_ranges.ips](https://registry.terraform.io/providers/integrations/github/6.4.0/docs/data-sources/ip_ranges) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | n/a | `string` | n/a | yes |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
