module "simple-vpc-network" {
  source  = "app.terraform.io/alxdrl/network/google"
  version = "2.5.0"
  # insert required variables here
  project_id   = var.project
  network_name = "gaurav-net"

  subnets = [
    {
      subnet_name   = "gaurav-subnet"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-west1"
    }
  ]
}