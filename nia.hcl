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
  address = "52.90.90.230:8500"
}
provider "bigip" {
  address  = "10.192.74.74"
}
task {
  name = "CreateBasicNetworkingonBIG-IP"
  description = "Creatiing vlan and self IP on BIG-IP"
  source = "../../modules/netself"
  providers = ["bigip"]
  services = ["nginx", "web"]
  variable_files = ["/Users/shitole/dev/nia/user-demo.tfvars"]
}

