variable "aws_instance_type" {
    description ="what type od instance you want to create"
    type = string
    validation {
      condition = var.aws_instance_type=="t2.micro"||var.aws_instance_type=="t3.micro"
      error_message = "you can only add t2 and t3 micro"
    }

}
# variable "root_volume_size" {
#     type = number
#     default = 20
  
# }
# variable "root_volume_type" {
#     type = string
#     default = "gp2"

  #  }
variable "ec2_config" {
    type = object({
      v_size = number
      v_type = string
    })
    default = {
      v_size = 30
      v_type = "gp2"
    }
  
}

  
