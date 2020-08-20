provider "aws" {
    region = "eu-west-1"
    profile = "wetekdev"
}

resource "aws_instance" "wbc-preprod" {
    ami            = "ami-01b282b0f06ba5fd2"
    instance_type  = "t2.large"

    tags = {
        Name = "wbc-preprod"
    }
}
