output "pradeep_vpc_id" {
  value = "${module.vpc.pradeep_vpc_id}"
}

output "pradeep_acl_id" {
  value = "${module.vpc.pradeep_acl_id}"
}

output "pradeep_route_table_id" {
  value = "${module.vpc.pradeep_route_table_id}"
}

output "pradeep_security_group_id" {
  value = "${module.vpc.pradeep_security_group_id}"
}

output "subnet1_id" {
  value = "${module.aws_subnet_az1.subnet1_id}"
}

output "subnet2_id" {
  value = "${module.aws_subnet_az2.subnet1_id}"
}

output "subnet3_id" {
  value = "${module.aws_subnet_az3.subnet1_id}"
}

output "pradeep_priv_ip" {
  value = "${module.aws_instance1.pradeep_priv_ip}"
}
