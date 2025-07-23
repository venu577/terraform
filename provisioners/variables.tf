variable "ami_id" {
    type        = string
    default     = "ami-09c813fb71547fc4f"
    description = "ami id of joindevops RHEL9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {

    type = map(string)
    # Using map(string) allows us to define a map with string keys and values 

    default = {
        Name        = "roboshop"
        purpose = "variables-demo"
    }
}

variable "sg_name" {
    default = "vars-file-allow-all"
}

variable "sg_description" {
    default = "Allowing all ports from internet"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type   = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "environment" {
    default = "dev" # Change this to "prod" to test the condition 
}

variable "instances" {
    default = [ "mongodb", "catalogue", "cart", "user" ]
    # default = {
    #    mongodb = "t3.micro"
    #    catalogue = "t3.micro"
    #    cart = "t3.micro"
    #    user = "t3.micro"
    #} if we dont want to use count.index
    # Using a list allows us to iterate over the instances using count.index
    #if we dont want to change above [] list to map we have to made changes to toset in ec2.tf 
}

variable "zone_id" {
    default = "Z07315751QJ0K1IVQMBBK"
}

variable "domain_name" {
    default = "newgenrobots.site"
}