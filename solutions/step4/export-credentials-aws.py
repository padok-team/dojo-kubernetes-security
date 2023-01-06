#!/bin/python3

import json
import sys

if len(sys.argv) < 2:
  print('Please specify a path to the file containing JSON AWS metadata credentials')
  print("%s <file>" % sys.argv[0])
  sys.exit()


credentials_raw = ""
with open(sys.argv[1],'r') as f:
  credentials_raw = f.read()


credentials = json.loads(credentials_raw)

access_key = credentials['AccessKeyId']
secret_key = credentials['SecretAccessKey']
token = credentials['Token']

print("Copy paste the export commands below on your machine\n")
print('export AWS_ACCESS_KEY_ID=%s' % access_key)
print('export AWS_SECRET_ACCESS_KEY=%s' % secret_key)
print('export AWS_SESSION_TOKEN=%s' % token)


print('')