output "subnets" {
  value = ["${aws_subnet.subnet.*.id}"]
}

output "azs" {
  value = ["${aws_subnet.subnet.*.availability_zone}"]
}
