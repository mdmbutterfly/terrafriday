1. I use the s3 bucket module recommended from terraform official site. 
2. I use maps variable for define lifecycle policy and names. In the future, there is a possibility to add another common configuration
3. Because we know the number of buckets and we assume that the number of buckets will not change in the future dynamically and often I decide to write 3 module instantiation in tf file. In my opinion it more readable and easy to maintain rather than use count.
4. My idea for lifecycles policy is that if more file is written (or often generated in other words) then faster I will move it to cheaper s3 object type.




In production I will add s3 backend with locking via DynameDB for terraform and build all in docker container. 



```
aws --version
aws-cli/2.0.57 Python/3.7.4 Darwin/18.7.0 exe/x86_64

terraform --version
Terraform v0.13.4
+ provider registry.terraform.io/hashicorp/aws v3.11.0
```
