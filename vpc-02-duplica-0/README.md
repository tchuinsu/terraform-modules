## Add tags
- add the below tags if you are using the default VPC so that the aws-load-balancer-controller can discover the subnets
- This should be perfect for all public subnet for default vpc: "kubernetes.io/role/elb" = 1

```s
public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }


kubernetes.io/cluster/2560-dev-dev = shared
kubernetes.io/role/elb = 1

kubernetes.io/cluster/2560-dev-dev = shared
kubernetes.io/role/internal-elb = 1
```


```s
tags = merge(var.tags, {
    Name                                        = format("%s-%s-%s-public-subnet-${count.index + 1}-${element(var.availability_zones, count.index)}", var.tags["id"], var.tags["environment"], var.tags["project"])
    "kubernetes.io/role/internal-elb"           = "1"
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    },
  )
```

```
kubernetes.io/role/internal-elb          = 1
kubernetes.io/cluster/2560-dev-del = shared
```