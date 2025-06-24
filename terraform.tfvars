vpc_cidr             = "11.0.0.0/16"
vpc_name             = "dev-proj-jenkins-eu-west-vpc-1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet  = ["11.0.3.0/24", "11.0.4.0/24"]
ap_availability_zone = ["ap-south-1a", "ap-south-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC549uunMsFiNt6k1/ZjQPB7ClIWETcAJocLxb4hd/OpqNDNN1gLK77RAoZFZbRrzUdfUYFPA6AU3pkGz72Rxnrxq+7UFIwRCWy2LxhY5dHB+yDoEdVHvCALPKB5Zx1+4ypRoC5Ncl0sDNjN3DfTKMGv0u7+JLWVMeuKnQ/dD5swd2oRkJhF5sj0fXIjkklxC20GR9ZX7UmiBOABOcqe9YAQekagRDFtdQ6a3pYWKSoj0XLiFghsulyAIzBpYn6lSHUsB9m6TmVEeAusf/unpFOdTbMOheJ+ZMP7UpF679AdCKyhbU18K1QZxcQmZOUEaK21aTUcz3lcFhMCXsf3Ih69vqpvC98o27qFHWjoufR+7AIM+GPDrAtBLNousMlO2QrBG6vZDUbIvSeft4YPQkXeKGUR8llBJ2a9kyxsGL4uh/hylgIucj0YKpjeZ2ieOymdwoHwtrHWPgtHzn+X5xXCw5RMdesGwPfWZUiyMbAIG9J8bZBxrQVtIZo3LFgu8M= devopsgeek.in"
ec2_ami_id = "ami-021a584b49225376d"