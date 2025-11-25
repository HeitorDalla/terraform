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