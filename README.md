# Hyperlane Terraform Deployment

## Prerequisites 

### Download Terraform

Terraform is required to run this. It can be installed [here](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

### Create Terraform Backend for state

Terraform requires a remote storage medium in order to be able to store state. For this , we will use AWS s3. In order to create this , we will run the following command in the AWS CLI. Please note that names in s3 have to be globally unique. 

```shell
aws s3api create-bucket --bucket hyperlane-terraform-state --region us-east-1

{
    "Location": "/hyperlane-terraform-state"
}

```

## Deployment

### Initialize Terraform

Move into the `production-tf/hyperlane/` directory and run

```shell
 terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v4.67.0...
- Installed hashicorp/aws v4.67.0 (signed by HashiCorp)
```

### Plan the deployment 

From the same directory , run 

```shell
terraform plan
```

### Execute the plan

Once you have reviewed the plan and are happy with it , run 

```shell

terraform apply
```

The plan would be printed on screen again , and you will be prompt to execute it.


If the run is successful , we you should see the following output

### Write variable to disk


In order to store the output of the execution, run

```shell
./generate_outputs.sh
```