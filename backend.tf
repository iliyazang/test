terraform { 
    backend "s3"{
        bucket="statefilebucket-iliya"
        # encrypt= true 
        #dynamodb_table= "terraform-state-lock-dynamo"
        key= "terraform.tfstate" 
        region= "us-east-1"
    }
}