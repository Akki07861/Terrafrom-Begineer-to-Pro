**Terraform migration**

I have used the previous ec2 created by terraform in this directory and migrated the all 
resources to this directory.  for that

## src
```hcl
provider "aws" {
  region = "us-east-1"
}

import {
  id = "XXXXXXXXXx"  # add your instance_id running/stop
  to = aws_instance.example
}

```

from that we can create migrate the date for that instance into your new folder 
either it is created by using aws console or terraform. 

steps for importing :
on terminal hit the following terraform commands.
## CMD  (INSURE TO CHNAGE COMMAND ACCORDINGLY....)

 terraform init
 
 terraform validate

 terraform fmt
 
 terraform plan -generate-config-out=/path of your project directory/filename.tf

##
after that terraform will be import all the configuration of the existing instance into your specified file(filename.tf).
after that copy the code from filename.tf and paste it on the main.tf 
now delete the imported file 

## CMD 

 terraform import aws_instance.example " your instance_id" # do not make it in quotes

##
by this command the state file for instance is generated to your directory and now you are able to do 
all things related to that instance with help of terraform. 
