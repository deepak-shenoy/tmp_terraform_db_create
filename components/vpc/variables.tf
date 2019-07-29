/*
 * Input variables used to configure VPCs
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 27, 2019
 */

# The CIDR block for the VPC.
variable "cidr_block"                       {}

# Tenancy option for instances launched into the VPC.
variable "instance_tenacy"                  {}

# Boolean flag to enable/disable DNS support in the VPC.  Defaults to true.
variable "enable_dns_support"               {}

# Boolean flag to enable/disable DNS hostnames in the VPC.  Defaults to false.
variable "enable_dns_hostnames"             {}

# Boolean flag to enable/disable ClassicLink for the VPC.  Only valid in regions
variable "enable_classiclink"               {}

# Boolean flag to enable/disable ClassicLink DNS support for the VPC.  (For Classic EC2 - legacy)
variable "enable_classiclink_dns_support"   {}

# Requests an Amazon-provided IPv6 CIDR block with /56 prefix length for the VPC.
variable "assign_generated_ipv6_cidr_block" {}

# Tags mapping for the resource
variable "environment_tag"                  {}

# ID of the main route table associated with this VPC.   VPCs route table can be changed using an aws_main_route_table_association
#main_route_table_id                         {}

# The ID of the network ACL created by the VPC createion
#default_network_acl_id                      {}

# The ID of the security group created by fault on VPC creation
#default_security_group_id                   {}

# The ID of teh route table created by dfault on VPC creation
#default_route_table_id                      {}

# The association ID for the route table created by default on VPC creation
#ipv6_association_id                         {}

# The IPv6 CIDR block
#ipv6_cidr_block                             {}
