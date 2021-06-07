# terraform-aws-dynamic_instance_behind_LoadBalancer

## This module has automated the process of launching ec2 instance from user provided ami &amp; placing them behind the Load Balancer.

### variables
- aws_count  (number of instance to be launched)
  default = 1
- aws_az  (Availability zone) ** Required **
  default = "ap-south-1" * Mumbai *
- instance_port={"HTTP": 80}
- lb_port={"HTTP": 80}
- instance_protocol=["HTTP"]
- lb_protocol={"HTTP" : "HTTP"}
- aws_ami="ami-04c798aa91b4238ab"
- health_check_target="HTTP:80/index.php"
- internal=false
- health_check_interval=30
- health_check_timeout=3
- associate_public_ip=true
- sg_id=["sg-08a0f3cdae47fbbd6"]
- instance_type="t2.micro"
