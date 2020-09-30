
terraform {
 required_version  = ">= 0.12"
}

resource "bigip_net_vlan" "netself" {
  name = var.vlanname
  tag  = var.vlantag
  interfaces {
    vlanport = var.vlanport
    tagged   = var.tagged
  }
}

resource "bigip_net_selfip" "netself" {
  name       = var.selfipname
  ip         = var.selfip
  vlan       = var.vlanname
  depends_on = [bigip_net_vlan.netself]
}

