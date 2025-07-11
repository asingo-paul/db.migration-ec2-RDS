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
  <img width="1543" height="994" alt="Screenshot 2025-07-11 103400" src="https://github.com/user-attachments/assets/c4c52a35-0884-42ba-8b31-85b6a33c691e" />

  ## step 2 - Install mysql database and insert data into it
  ### use the following command to install mysql on ubuntu
  - sudo apt install mysql-server
  ### for the demo we won't need alot of configuration for now...open mysql using this command below
  - sudo mysql
    
























  
