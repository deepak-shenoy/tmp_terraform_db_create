/*
 * Common component to build Aurora DB
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28th, 2019
 */

resource "aws_rds_cluster_instance" "cluster_instance1" {
  identifier = "${var.rds_cluster_name}-instance01"
  cluster_identifier = "${aws_rds_cluster.cluster.id}"
  instance_class = "${var.rds_instance_class}"
  engine = "${var.rds_engine}"
  engine_version = "${var.rds_engine_version}"
}

resource "aws_rds_cluster_instance" "cluster_instance2" {
  identifier = "${var.rds_cluster_name}-instance02"
  cluster_identifier = "${aws_rds_cluster.cluster.id}"
  instance_class = "${var.rds_instance_class}"
  engine = "${var.rds_engine}"
  engine_version = "${var.rds_engine_version}"
}

resource "aws_rds_cluster" "cluster" {
  cluster_identifier = "${var.rds_cluster_name}"
  database_name = "${var.rds_database_name}"
  engine = "${var.rds_engine}"
  engine_version = "${var.rds_engine_version}"
  master_username = "${var.rds_username}"
  master_password = "${var.rds_password}"
  vpc_security_group_ids = ["${var.db_security_group}"]
  db_subnet_group_name = "${var.rds_subnet_group}"
  skip_final_snapshot = true

}
