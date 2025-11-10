// Esse arquivo define como e onde o terraform vai armazenar seus dados de estado
terraform {
    backend "gcs" { // Google Cloud Storage
        bucket = "pub-tf-state-bucket-01-tf-state" // nome do bucket
        prefix = "terraform/state" // caminho do diretório virtual dentro do ducket remoto do GCS que armazenará os arquivos de estado do terraform
        credentials = "credentials/credentials.json"
    }
}