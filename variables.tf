// Informações para o Provedor (projeto)
variable "project_id" {
    type = string
    description = "Id do projeto o qual eu estarei trabalhando"
    default = "pub-tf-state-bucket-01-477802"
}

variable "credentials_file" {
    type = string
    description = "Sera responsavel por localizar as minhas credenciais do meu projeto para usar no provider.tf"
    default = "credentials/credentials.json"
}

variable "gcp_region" {
    type = string
    description = "Região onde esta o meu projeto"
    default = "us-east1"
}

variable "gcp_zone" {
    type = string
    description = "Zona onde o meu projeto esta localizado"
    default = "us-east1-b"
}

// Informações para VM
variable "vm_name" {
    type = string
    description = "The VM name to be used in GCP"
    default = "flask-app-1"
}

variable "vm_type" {
    type = string
    description = "The VM machine_type for vCPU and memory"
    default = "f1-micro"
}

variable "vm_image" {
    type = string
    description = "The image name for the OS of the VM"
    default = "debian-cloud/debian-11"
}

variable "vm_startup_script" {
    type = string
    description = "The text of the startup script command that we need to run in the VM when it boots up"
    default = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"
}

variable "subnet_ip_range" {
    type = string
    description = "The IPv4 CIDR range to be used in the VPC that will be created"
    default = "10.0.1.0/24"
}

variable "vpc_auto_create_subnets" {
    type = bool
    description = "Defines the behavior for the VPC whether we want to use it in auto mode (true) or a custom VPC (false)"
    default = false
}

variable "vpc_mtu" {
    type = number
    description = "The value of the MTU for our new VPC"
    default = 1460
}