provider "aws" {
    region = "eu-west-1"
    profile = "wetekdev"
}

resource "aws_instance" "wbc-preprod" {
    ami            = "ami-01b282b0f06ba5fd2"
    instance_type  = "t2.large"
    key_name       = "wetek-devops-wbc"
    associated_public_ip_address = true
    root_block_device {
        volume_type = "gp2"
        volume_size = "120"
        delete_on_termination = true
    }

    tags = {
        Name = "WBC-preprod"
    }
}

output "IPAddress" {
    value = "${aws_instance.wbc-preprod.public_ip}"
}