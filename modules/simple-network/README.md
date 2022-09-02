# **Simple Network module**

This module set up a new vpc with one public subnet within an availavility zone and a secure group to allow HTTP access and SSH from the ip set in the variables

### Example of use

```hcl
module "network" {
  source            = "<PATH-TO-THE-MODULE>"
  vpc_name          = "<VPC-NAME>"
  vpc_cidr          = "<VPC-CIDR>"
  vpc_az            = "<VPC-AVAILABILITY-ZONE>"
  vpc_public_subnet = "<CIDR-FOR-THE-PUBLIC-SUBNET>"
  local_machine_ip  = "<YOUR-PUBLIC-IP-TO-SSH>"
}
```

---

Remember this is a dev module, **_Do not use it in production_**
