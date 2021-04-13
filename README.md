# nginx-ec2

# How to deploy the cloudformation stack to deploy nginx?

aws cloudformation create-stack  --stack-name nginx-ec2  \
   --template-body file:///Users/chetan/git/nginx-ec2/nginx_cloudformation.yaml \
    --parameters  ParameterKey=KeyName,ParameterValue=nginx-test

The above CloudFormation template will deploy EC2Instance and content in AWS.


# Check nginx Status
chmod +x validate_page.sh
./validate_page.sh IP_address_of_ec2_instance
