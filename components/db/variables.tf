/*
 * Input variables used to configure Database
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

# The security group for the database.
variable "db_security_group"                {}
variable "rds_cluster_name"                 {}
variable "rds_instance_class"               {}
variable "rds_username"                     {}
variable "rds_password"                     {}
variable "rds_database_name"                {}
variable "rds_subnet_group"                 {}
variable "rds_engine"                       {}
variable "rds_engine_version"               {}
variable "rds_instance_zone1"               {}
variable "rds_instance_zone2"               {}
