
module "name" {
    source = "./s3"
    bucket_name = "Netflix-zao555"
}



module "prime" {
    source = "./s3"
    bucket_name = "prime-zao555"
}

module "sg" {
    source = "./sg"
    
}

module "ec2" {
    source = "./ec2"
    sg_id = module.sg.sg_id
    instance_type = "t2.nano"
    
}