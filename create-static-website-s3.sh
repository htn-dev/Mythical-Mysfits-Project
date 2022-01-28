# Create an S3 bucket
aws s3 mb s3://REPLACE_ME_BUCKET_NAME

# Enables the objects in the bucket to be requested using a registered public DNS name for the bucket, 
# as well as direct site requests to the base path of the DNS name to a selected website homepage (index.html in most cases):
aws s3 website s3://REPLACE_ME_BUCKET_NAME --index-document index.html

# Add a public bucket policy to your website
aws s3api put-bucket-policy --bucket REPLACE_ME_BUCKET_NAME --policy file://~/environment/aws-modern-application-workshop/module-1/aws-cli/website-bucket-policy.json

# Copy the provided index.html page locally from your IDE up to the new S3 bucket
aws s3 cp ~/environment/aws-modern-application-workshop/module-1/web/index.html s3://REPLACE_ME_BUCKET_NAME/index.html

