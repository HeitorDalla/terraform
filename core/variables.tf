// Informações para o Provedor (projeto)
variable "project_id" {
    type = string
    description = "Id do projeto o qual eu estarei trabalhando"
}

variable "credentials_file" {
    type = string
    description = "Sera responsavel por localizar as minhas credenciais do meu projeto para usar no provider.tf"
}

variable "gcp_region" {
    type = string
    description = "Região onde esta o meu projeto"
}

variable "gcp_zone" {
    type = string
    description = "Zona onde o meu projeto esta localizado"
}