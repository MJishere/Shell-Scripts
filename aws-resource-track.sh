#!/bin/bash

########################################
#  Author : Manoj
#  Date : 30th Jul
#  Version: V1
#
#  Report AWS resouce usage
#######################################

# Services :
# EC2
# S3
# Lambda
# IAM 


# List Ec2 instances
echo "Print EC2 Instance Details : "
aws ec2 describe-instances

# List S3 buckets
echo "Print list of S3 Buckets : "
aws s3 ls

# List Lambda functions
echo "Print List of Lambda Functions : "
aws lambda list-functions

# List IAM Users
echo "Print List of IAM Users : "
aws iam list-users