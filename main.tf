resource "aws_instance" "test-instance"{
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    associate_public_ip_address = true 
    user_data=file("jenkins_install.sh")

}