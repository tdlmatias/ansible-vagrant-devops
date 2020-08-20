provider "aws" {
    region = "${var.aws_region}"
    shared_credentials_file = "${var.shared_cred_file}"
    profile = "wetekdev"
}

resource "aws_instance" "wbc-preprod" {
    ami            = "ami-01b282b0f06ba5fd2"
    instance_type  = "t2.large"

    tags = {
        Name = "wbc-preprod"
    }
}
