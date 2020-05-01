variable name {
  type    = string
  default = ""
}

variable vpc_id {
  type = string
}

variable cidr_blocks {
  type = list(string)
}

variable azs {
  type = list(string)
}

variable vpc_private_route_tables {
  type = list(string)
}
