Adding localhost as ansble local inventory

[local]
localhost ansible_connection=local

upadating aws creds 

export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key

Set AWS Credentials File in Jenkins User’s Home

mkdir -p /var/lib/jenkins/.aws
cat > /var/lib/jenkins/.aws/credentials <<EOF
[default]
aws_access_key_id = YOUR_ACCESS_KEY
aws_secret_access_key = YOUR_SECRET_KEY
EOF
chown -R jenkins:jenkins /var/lib/jenkins/.aws
chmod 600 /var/lib/jenkins/.aws/credentials


