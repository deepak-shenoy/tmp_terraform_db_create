output "main_vpc_id_env" {
  description                                 = "The Resource ID of the main VPC"
  value                                       = "${module.dev-vpc.main_vpc_id}"
}