resource "aws_subnet" "subnet" {
  count = length(var.cidr_blocks)

  lifecycle {
    create_before_destroy = true
  }

  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_blocks[count.index]
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = var.name == "" ? "private-${element(var.azs, count.index)}" : var.name
  }
}

resource "aws_route_table_association" "route_table_association" {
  count          = length(var.cidr_blocks)
  subnet_id      = element(aws_subnet.subnet[*].id, count.index)
  route_table_id = element(var.vpc_private_route_tables, count.index)
}
