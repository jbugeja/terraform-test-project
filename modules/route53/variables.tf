variable "domain_name" {
    type          = string
    description   = "The domain name for the hosted zone."
    default       = "sometornadodomain.com"
}

variable "records" {
    description = "lb-dns"
    type = string
}

variable "zone_id" {
    type          = string
    description   = "the lb zone ID"
  
}