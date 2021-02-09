# cicd-terraform
This repo is used to automate AWS stuff using terraform. 

This code is used to create CI/CD pipeline for react application on AWS. There are 3 stages involved in the CI/CD pipeline. They are:

1) Source
2) Build
3) Deploy

# Source

In this current code, it pulls code from github. Update Owner, Repo, Branch, OAuthToken in the variables.tf file before running the code.

# Build

Code builds the code and copies artifacts to the s3 folder.

# Deploy

The artificats are extracted and pushed to S3. S3 is used to host the application here. 

# Run the below commands to run the code

# terraform init

This is used to initialize the terraform in the current project.

# terraform apply

This is used to run the code

# terraform destroy

This is used to delete the infrastructure which was created earlier.

Please reach out to me on udaymargadi@gmail.com if you have any queries in running the application. I'm open to work more on terraform.

