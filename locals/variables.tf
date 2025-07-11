variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev" # Change this to "prod" to test the condition 
}

variable "component" {
    default = "cart" # Change this to "catalogue" or "mongodb" to test the condition
}

# variable "final_name" {
#     default = "${var.project}-${var.environment}-${var.component}"
# }
variable "common_tags" {
    default = {
        project = "roboshop"
        terraform = "true"
    }
}