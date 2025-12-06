// Esse arquivo define como e onde o terraform vai armazenar seus dados de estado
terraform {
    backend "gcs" { // Google Cloud Storage
        bucket = "pub-tf-sa-core-477801-bucket-tfstate" // nome do bucket
        prefix = "main-env/state" // caminho do diretório virtual dentro do ducket remoto do GCS que armazenará os arquivos de estado do terraform
        credentials = "credentials/credentials.json"
    }
}