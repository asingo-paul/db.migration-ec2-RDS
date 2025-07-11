# db.migration-ec2-RDS
migration of mysql database from an EC2 instance to RDS mysql
## Requirements
- An AWS account
- Terraform (optional)
## STEP 1 - create an aws ec2 instance
- login to your AWS account
- Create a user under IAM so that we avoid using the root account(optional)
- Navigate to your console and search for ec2.
- launch an instance......
    - choose on a name for your instance.
    - Select an AMI(ubuntu)
    - For the demo we will choose free-tier so as to not get charged
    - Create a key pair if you do not have one already
    - Then press on launch instance.
