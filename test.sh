#!/bin/sh
set -x

bundle exec rspec
AWS_DEFAULT_REGION=ap-northeast-1 aws ec2 revoke-security-group-ingress --group-id sg-f8da2d9e --protocol tcp --port 80 --cidr `curl -s ifconfig.me`/32