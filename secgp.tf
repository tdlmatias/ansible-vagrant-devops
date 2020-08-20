resource  "aws_security_group" "wbc-preprod" {
    name = "wbc-preprod"

    ingress {
        from_port    = 22
        to_port      = 22
        protocol     = "tcp"
        cidr_blocks  = ["90.240.81.140/32","149.90.45.76/32"]

    }

}