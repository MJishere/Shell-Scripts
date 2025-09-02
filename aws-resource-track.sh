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

set -xeo pipefail

# List Ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourcetracker

# List S3 
aws s3 ls >> resourcetracker

# List Lambda functions
aws lambda list-functions >> resourcetracker

# List IAM Users
aws iam list-users >> resourcetracker

cat resourcetracker
