terraform {
  required_providers {
    ad = {
      source  = "hashicorp/ad"
      version = "0.5.0"
    }
  }
  required_version = ">= 0.14"
}

provider "ad" {
  winrm_hostname         = var.hostname
  winrm_username         = var.username
  winrm_password         = var.password
  winrm_use_ntlm         = true
  krb_realm              = var.domain
  krb_conf               = "${path.module}/files/krb5.conf"
  # krb_spn                = "winserver1"
  # winrm_port             = 5986
  # winrm_proto            = "https"
  winrm_pass_credentials = true
  winrm_insecure         = true
}