project_id = "pub-tf-state-bucket-01-477802"
credentials_file = "credentials/credentials.json"
gcp_region = "us-east1"
gcp_zone = "us-east1-b"

subnet_ip_range = "10.0.1.0/24"
vpc_auto_create_subnets = false
vpc_mtu = 1460

vm_config = {
    vm_name = "flask-app-1"
    vm_type = "f1-micro"
    vm_tags = [ "ssh", "flask", "web-app" ]
    vm_image = "debian-cloud/debian-11"
    vm_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"
}