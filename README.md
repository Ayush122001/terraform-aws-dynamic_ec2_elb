# terraform-aws-dynamic_instance_behind_LoadBalancer

## This module has automated the process of launching ec2 instance from user provided ami &amp; placing them behind the Load Balancer.

### variables
- aws_count  (number of instance to be launched)
    - Default = 1
    
- aws_az  (Availability zone) **Required**
    - Default = "ap-south-1" *Mumbai*

- instance_port (Port number on which Load Balancer will connect to instance)  **Required**
    - Enter value in map data structure like  **{"HTTP": 80}**
    - Default = {"HTTP": 80} 

- lb_port={"HTTP": 80}

- instance_protocol=["HTTP"]

- lb_protocol (Protocol on which Load Balancer will work/listen)
    - {"HTTP" : "HTTP"}

- aws_ami (ami id for launching instance ) **Required**

- health_check_target **Required**
    - Default="HTTP:80/index.php"

- internal=false

- health_check_interval=30

- health_check_timeout=3

- associate_public_ip (Assign public ip to instance)
    - Default =true

- sg_id=["sg-08a0f3cdae47fbbd6"]

- instance_type
    - Default = "t2.micro"
