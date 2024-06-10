locals {
  bucket_name = "buckit1297"

  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]

  instance_type = "t2.micro"
  ami           = "ami-0cff7528ff583bf9a" 
  key_name      = "my-key-pair"            
  ssh_allowed_cidrs = ["0.0.0.0/0"]        
}
