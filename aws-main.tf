terraform {
        required_providers {

        aws =  {

                source = "hashicorp/aws"
                version = ">= 4.16"

                }

        }

        required_version = ">= 1.2.0"

}

provider "aws" {

        region = "us-east-1"
}

resource "aws_instance" "aws_ec2_instance" {
        count = 2
        ami = "ami-0557a15b87f6559cf"
        instance_type = "t2.micro"
        tags = {
                Name = "Terraform_Server2"
                }

}

resource "aws_s3_bucket" "bucket_form_terraform_by_rkn" {

        bucket = "aws-s3-bucket.bucket-form-terraform.ritesh"
        tags = {

                Name = "bucket_from_terraform_by_ritesh1"
                Environment = "DevQa"

                }

}

output "ec2_public_ips" {
        value = aws_instance.aws_ec2_instance[*].public_ip
        }
                                           
