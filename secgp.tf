resource  "aws_security_group" "wbc-preprod" {
    name = "wbc-preprod"

    ingress {
        from_port    = 22
        to_port      = 22
        protocol     = "tcp"
        cidr_blocks  = ["xx.xxx.xx.xxx/32","xxx.xx.xx.xx/32"]

    }

}
