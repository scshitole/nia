log_level = "debug"
driver "terraform" {
  log = true
  required_providers {
    bigip = {
      source = "F5Networks/bigip"
    }
  }
}
consul {
  address = "consul_ip:8500"
}
provider "bigip" {
  address  = "hostip"
}
task {
  name = "CreateBasicNetworkingonBIG-IP"
  description = "Creatiing vlan and self IP on BIG-IP"
  source = "../../modules/netself"
  providers = ["bigip"]
  services = ["nginx", "web"]
  variable_files = ["/Users/shitole/dev/nia/user-demo.tfvars"]
}

