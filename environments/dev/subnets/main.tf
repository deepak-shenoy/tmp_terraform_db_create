/*
 * Definitions to build Subnets
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

module "dev-subnets" {

  source                           = "../../../components/subnets"


  db_main_vpc                      = "${var.db_main_vpc}"
  db_front_cidr_block              = "${var.db_front_cidr_block}"
  db_back_cidr_block               = "${var.db_back_cidr_block}"
  db_front_az                      = "${var.db_front_az}"
  db_back_az                       = "${var.db_back_az}"

}