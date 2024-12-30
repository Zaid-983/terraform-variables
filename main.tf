terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.1"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "my_fist_project" {
    
    ami = "ami-0fd05997b4dff7aac"
    instance_type = var.aws_instance_type

    root_block_device{
        delete_on_termination = true
        volume_size = var.ec2_config.v_size
        volume_type = var.ec2_config.v_type
    }




}