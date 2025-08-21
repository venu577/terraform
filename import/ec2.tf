resource "aws_instance" "linux" {
    
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids =  "sg-059521b9a81665a87"
    tags = {
        Name = "linux"
    }
            
}

