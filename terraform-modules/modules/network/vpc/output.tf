output "pradeep_vpc_id" {
  value = "${aws_vpc.aws_vpc_aug7th.id}"
}

output "pradeep_acl_id" {
  value = "${aws_vpc.aws_vpc_aug7th.default_network_acl_id}"
}

output "pradeep_route_table_id" {
  value = "${aws_vpc.aws_vpc_aug7th.default_route_table_id}"
}

output "pradeep_security_group_id" {
  value = "${aws_vpc.aws_vpc_aug7th.default_security_group_id}"
}
