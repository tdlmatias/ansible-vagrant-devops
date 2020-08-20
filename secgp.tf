resource  "aws_security_group" "wbc-preprod" {
    name = "wbc-preprod"

    ingress {
        from_port    = 22
        to_port      = 22
        protocol     = "tcp"
        cidr_blocks  = ["90.240.81.140/32","149.90.45.76/32"]

    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    subnet_id = "subnet-7ca08725"
    vpc_security_group_ids = ["vpc-3a3c005f"]

    //assigning public IP to the instance is required.
    associate_public_ip_address=true
    key_name = "wetek-devops-wbc"

    provisioner "remote-exec" {
        inline = [
            //Executing command to creating a file on the instance
            "echo 'Some data' > SomeData.txt",
        ]

        //Connection to be used by provisioner to perform remote executions
        connection {
            //Use public IP of the instance to connect to it.
            host          = "${aws_instance.wbc-preprod.public_ip}"
            type          = "ssh"
            user          = "admin"
            private_key   = "${file(var.key_path)}"
            timeout       = "1m"
            agent         = false
        }
    }

}

resource "aws_eip" "wbc-preprod_eip" {
        instance = "${aws_instance.wbc-preprod.id}"
        vpc      = true
}