/*
 * This is the 'main' Terraform file used to set up the
 * development environment infrastructure.
 */

module "vpc" {
  source = "./vpc"
}

module "sg" {
  source = "./sg"
  main_vpc_id = "${module.vpc.main_vpc_id_env}"
}

module "subnets" {
  source = "./subnets"
  db_main_vpc = "${module.vpc.main_vpc_id_env}"
  db_front_cidr_block = "10.0.3.0/24"
  db_back_cidr_block = "10.0.4.0/24"
  db_front_az = "us-east-1a"
  db_back_az = "us-east-1b"
}

module "subnet-groups" {
  source = "./subnets_db_groups"
  front_subnet = "${module.subnets.db_front_subnet}"
  back_subnet = "${module.subnets.db_back_subnet}"
}

module "db" {
  source = "./db"
  db_security_group = "${module.sg.main_db_sg_env}"
  rds_cluster_name = "test-cluster"
  rds_instance_class = "db.r4.large"
  rds_username = "testuser"
  rds_password = "will-change-password-github-public"
  rds_database_name = "sample_rds"
  rds_subnet_group = "${module.subnet-groups.db_main_subnet_groups-env}"
  rds_engine = "aurora-mysql"
  rds_engine_version = "5.7.mysql_aurora.2.04.2"
  rds_instance_zone1 = "us-east-1a"
  rds_instance_zone2 = "us-east-1b"
}