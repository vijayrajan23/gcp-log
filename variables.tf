variable "resource_type" {
  default = "k8s_container"
}

variable "namespace_name" {
  default = "chnlpart-cpms"
}
variable "container_name" {
  default = "cdo-web-chnlpart-coconut-it01"
}
variable "query_channel" {
    default = "channel_orgs"
  
}
variable "query_outlet" {
    default = "outlet-cores"
  
}
variable "query_sales" {
    default = "sales-reps"
  
}
