variable "shared_cred_file" {}
//variable "access_key" {}
//variable "secret_key" {}
variable "key_name" {}
variable "key_path" {}
 
variable "aws_region"  {
    description = "Region to launch Server's"
    default = "eu-west-1"
}

//module "key_pair" {
//  source = "terraform-aws-modules/key-pair/aws"

//  key_name   = "wetek-devops-wbc"
//  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"

//}

data "tls_public_key" "wbc-preprod" {
  private_key_pem = "${file("~/.ssh/wetek-devops-wbc.pem")}"
}
