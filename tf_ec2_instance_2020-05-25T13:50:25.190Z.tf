
    resource "aws_instance" "vi-aws-test" { # Es una buena práctica que el tag Name coincida con el nombre del recurso en Terraform
      ami                    = "ami-03b569dec09966d4b"
      instance_type          = "m5.large"
      iam_instance_profile   = "CloudSec-SSM-EC2-EC2DefaultRoleInstanceProfile"
      subnet_id              = "subnet-7eba6c50" # Datos propios de la cuenta AWS
      vpc_security_group_ids = "sg-05e144687873ff85c"   # Datos propios de la cuenta AWS
      tags = {
        Name         = "vi-aws-test"
        team         = "is-cloud"
        creator      = "jpineyro"
        requester    = "jpineyro"
        owner        = "jpineyro"
        ad-joined    = "true"
        environment  = "test"
        owner-team   = "is-cloud"
        platform     = "centos7"
        roles        = "testt"
        created      = "whale"
      }
      credit_specification {
        cpu_credits = "unlimited"
      }
    }
   