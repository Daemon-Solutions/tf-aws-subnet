# tf-aws-subnet

AWS Subnet - Terraform Module

Creates a private subnet within an existing VPC and associates it to existing route tables

## Usage

```js
module "subnet" {
  source    = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-subnet.git"

  vpc_id = "vpc-12345678"
  cidr_blocks  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
  azs = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  vpc_private_route_tables = ["rtb-12345678","rtb-23456789","rtb-34567890"]
}
```

## Variables

Variables marked with an * are mandatory, the others have sane defaults and can be omitted.

- `name` - (*default*: `private-`_az_) Name of the subnet
- `vpc_id`* - Existing VPC ID in which to create the subnet(s)
- `cidr_blocks`* - List of CIDR blocks to use for each subnet
- `azs`* - List of availability zones to create subnets in. The zone is used in the default `name`.
- `vpc_private_route_tables`* - List of existing private route tables (usually to your NATGW)


## Outputs

 - `subnets` - The subnet ids of the created subnets
 - `azs` - The availability zones for each of the created subnets (may differ from input)

# TODO

 - Support new route tables
 - Public subnets?
