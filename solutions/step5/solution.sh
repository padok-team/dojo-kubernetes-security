#!/bin/bash

aws s3api list-buckets
aws s3api list-objects --bucket bucket-flag-kube-lab-epita
aws s3api get-object --bucket bucket-flag-kube-lab-epita --key my-object.txt flag.txt
