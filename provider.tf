provider "google" { // nosso provedor é o google
    project = "pub-tf-state-bucket-01-477802" // queremos começar com um projeto especifico
    credentials = file("credentials/credentials.json")
    region = "us-east1"
    zone = "us-east1"
}