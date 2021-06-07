# terraform-aws-dynamic_instance_behind_LoadBalancer

## This module has automated the process of launching ec2 instance from user provided ami &amp; placing them behind the Load Balancer.

### variables: 

#### Required:

- aws_az  **// Required**
    - Availability zone
    - Default = "ap-south-1" *Mumbai*

- instance_port **// Required**
    - Port number on which Load Balancer will connect to instance  
    - Enter value in *map data* structure like  **{"HTTP": 80}**
    - Default = {"HTTP": 80}
    - **Syntax** = {"instance_protocol": port_number} 

- lb_port  **// Required**
    - Port number on which client will connect to Load Balancer  
    - Enter value in *map data* structure like  **{"HTTP": 80}**
    - Default = {"HTTP": 80}
    - **Syntax** = {"instance_protocol": port_number}

- instance_protocol **// Required**
    - Protocol on which instance will work
    - Enter valur in *list* data structure
    - Default: ["HTTP"]

- lb_protocol **// Required**
    - Protocol on which Load Balancer will work/listen
    - Enter value in *map data* structure like  **{"HTTP": HTTP}**
    - Default = {"HTTP": "HTTP"}
    - **Syntax** = {"instance_protocol": "lb_protocol"}

    - {"HTTP" : "HTTP"}

- aws_ami **// Required**
    - ami id for launching instance **Required**

- health_check_target **Required**
    - Default: "HTTP:80/index.php"


#### Optional

- internal
    - Whether Loadbalancer is internal or not
    - Default: true

- health_check_interval
    - Health check intervals for Load balancer
    - Default: 30

- health_check_timeout
    - Time out for health check
    - Default: 3

- associate_public_ip (Assign public ip to instance)
    - Default =true

- sg_id
    - Security Group id for instances
    - Default: [""]

- instance_type
    - Default = "t2.micro"

- key_name
    - Name of key that is to be used for login into instances
    - Default = None

- aws_count  
    - number of instance to be launched
    - Default = 1
