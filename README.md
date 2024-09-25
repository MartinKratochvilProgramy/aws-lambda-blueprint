# AWS Lambda with RDS

This repository contains scripts to create Lambda function on AWS in a VPC that connects to RDS database. Lambda is mapped to /hello route and returns RDS db version. This blueprint is intended to configure the respective services and networking, it can be extended further to add API endpoints and handlers.

![alt text](https://github.com/MartinKratochvilProgramy/aws-lambda-blueprint/blob/master/terraform/img/Schema.svg?raw=true)

# Install Lambda dependencies
Lambda handler needs psycopg2 library to run, it has to be installed in .../hello-world/psycopg2 so it could be deployed to service.

```
cd ./terraform/hello-world
pip install -t ./psycopg2 psycopg2-binary 
```


# Setup infrastructure

```
cd ./terraform
```

Login to AWS console
```
aws configure
```

Init terraform 
```
terraform init
```

Apply changes  
```
terraform apply
```
