
variable "services" {
  description = "Consul services monitored by Consul NIA"
  type = map(
    object({
      id        = string
      name      = string
      address   = string
      port      = number
      meta      = map(string)
      tags      = list(string)
      namespace = string
      status    = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)
    })
  )
}

variable "vlanname" {
  type = string
  description = "Vlan Name"
}

variable "vlantag" {
  description = " Tag value in integer"
}

variable "vlanport" {
    type = string
    description = " vlan port number"
}

variable "tagged" {
    type = bool
    description = " true or false"

}

variable "selfipname" {
     type = string 
     description = " Name of the SelfIP" 
 }

variable "selfip" {
     type = string
      description = "ip address of the self ip"
}


