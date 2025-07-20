#!/bin/bash
set -e

ARTIFACT="target/*.war"
S3_BUCKET="mubuilds-1234"
REGION="ap-south-1"
BUILD_NUM="${BUILD_NUMBER:-manual}"  # fallback for local testing

echo "Uploading $ARTIFACT to s3://$S3_BUCKET/webapp-${BUILD_NUM}.war"
aws s3 cp $ARTIFACT s3://$S3_BUCKET/webapp-${BUILD_NUM}.war --region $REGION
