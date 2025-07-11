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
    - It should have this look to show that it is created
      <img width="1601" height="212" alt="Screenshot 2025-07-11 102702" src="https://github.com/user-attachments/assets/f1afb26f-336e-4b16-92cf-e59e7b0b3995" />
- You can now connect to your instance -for this scenario i will connect via SSH
  ## step 2 - Install mysql database and insert data into it
  
