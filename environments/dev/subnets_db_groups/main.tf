/*
 * Definitions to build the DB Subnet Groups needed
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

module "dev-db-subnet-groups" {

  source                           = "../../../components/subnets_db_groups"

  front_subnet                     = "${var.front_subnet}"
  back_subnet                      = "${var.back_subnet}"

}