#!/bin/bash

# Carrega as variáveis de ambiente
export GOOGLE_APPLICATION_CREDENTIALS="/c/Users/Admin/Desktop/terraform/terraform/credentials/credentials.json"

# Executar o comando terraform passado como argumento
terraform "$@"

# Exemplo: ./run_tf.sh init