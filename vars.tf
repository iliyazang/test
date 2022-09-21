# variable "AWS_ACCESS_KEY" {
# }

# variable "AWS_SECRET_KEY" {
# }

variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "subnet_cidr_bits" {
    default = 8 
}