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

// Variáveis para a VM com variáveis complexas (objeto, lista)
variable "vm_config" {
    description = "Valores e propriedades da configuração da VM"
    type = object({
        vm_name = string
        vm_type = string
        vm_tags = list(string)
        vm_image = string
        vm_startup_script = string
    })

    default = {
        vm_name = "flask-app-1"
        vm_type = "f1-micro"
        vm_tags = [ "ssh", "flask", "web-app" ]
        vm_image = "debian-cloud/debian-11"
        vm_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"
    }
}

// Outras configurações
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