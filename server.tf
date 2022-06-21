resource "aws_instance "ABC" 
{
  # vpc_id		         = var.vpc_id
    ami                    = var.ami_id
    instance_type          = var.instance_type
    key_name               = var.key_id
    subnet_id              = var.subnet_id
    user_data     	   = "${file("userdata.sh")}"
    vpc_security_group_ids = [aws_security_group.ABC.id]

#Creating root volume
    root_block_device{
    volume_size = XX
    }

#tags
    tags = {
    Name       = ""    
    app        = ""
    owner      = ""
    }
}

#Creating security group
resource "aws_security_group" "" {
    name = ""
    description = "Security group instance"
    vpc_id = var.vpc_id
    
     ingress {
        description = "Rule"
        protocol = ""
        from_port = ""
        to_port =  ""
	  cide_blocks = 
    
    }
    egress {
        description = " "
        protocol = ""
        from_port = ""
        to_port =  ""
        cidr_blocks = 
    
     tags = {
           Name = "ABC"
       }

}
