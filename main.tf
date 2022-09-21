resource "aws_instance" "test-instance"{
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    associate_public_ip_address = true 
    user_data=<<EOF
    echo >> #Welcome to a new dispensation

    EOF
    subnet_id=aws_subnet.public_subnet[0].id
    security_groups=[aws_security_group.allow_ssh.id]

}