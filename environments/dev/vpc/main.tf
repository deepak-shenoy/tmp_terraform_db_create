/*
 * Definitions to build VPC Development Environment
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 27, 2019
 */

module "dev-vpc" {

  source                           = "../../../components/vpc"

  # The CIDR block for the VPC.
  cidr_block                       = "10.0.0.0/16"

  # Tenancy option for instances launched into the VPC.
  instance_tenacy                  = "dedicated"

  # Boolean flag to enable/disable DNS support in the VPC.  Defaults to true.
  enable_dns_support               = true

  # Boolean flag to enable/disable DNS hostnames in the VPC.  Defaults to false.
  enable_dns_hostnames             = false

  # Boolean flag to enable/disable ClassicLink for the VPC.  Only valid in regions
  enable_classiclink               = true

  # Boolean flag to enable/disable ClassicLink DNS support for the VPC.  (For Classic EC2 - legacy)
  enable_classiclink_dns_support   = false

  # Requests an Amazon-provided IPv6 CIDR block with /56 prefix length for the VPC.
  assign_generated_ipv6_cidr_block = false

  # Tags mapping for the resource
  environment_tag                  = "dev"
}