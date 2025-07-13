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

## STEP 2 - Install mysql database and insert data into it
### use the following command to install mysql on ubuntu
  - sudo apt install mysql-server
### for the demo we won't need alot of configuration for now...open mysql using this command below
  - sudo mysql
 
## STEP 3 - Let us insert some dummy data into this database that we are about to create.

  - CREATE DATABASE university_db;
  - use university_db;
  <img width="536" height="538" alt="Screenshot 2025-07-11 105625" src="https://github.com/user-attachments/assets/e14cb45e-138b-466e-987a-ea7f79950a18" />

lets now create tables

-CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(20) UNIQUE,
    credit_hours INT
);
this will show the tables created

<img width="473" height="277" alt="Screenshot 2025-07-11 110515" src="https://github.com/user-attachments/assets/43cbbb11-a675-4828-a533-9acea7995217" />

- this is for the table structures

<img width="1095" height="595" alt="Screenshot 2025-07-11 110718" src="https://github.com/user-attachments/assets/0d8b42cb-1e92-447d-8ba2-0106a0cb847d" />

- let's insert some data into them

<img width="1095" height="545" alt="Screenshot 2025-07-11 111603" src="https://github.com/user-attachments/assets/06919502-2cdf-4607-ac1c-a4ea1f926925" />

## STEP 4 : Now you can migrate your database
























  
