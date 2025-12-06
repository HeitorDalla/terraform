resource "google_storage_bucket" "default" {
    name     = "${var.project_id}-bucket-tfstate"
    location = "US"

    force_destroy               = false # impede que o bucket seja apagado se tiver arquivos dentro
    public_access_prevention    = "enforced" # garante que ninguem pode tornar o bucket publico
    uniform_bucket_level_access = true # centraliza o controle de permissao apenas no bucket

    # Ativa o versionamento do state
    versioning {
        enabled = true
    }
}