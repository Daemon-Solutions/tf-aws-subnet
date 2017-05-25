variable name {
  default = ""
}

variable vpc_id {}

variable cidr_blocks {
  type = "list"
}

variable azs {
  type = "list"
}

variable vpc_private_route_tables {
  type = "list"
}
