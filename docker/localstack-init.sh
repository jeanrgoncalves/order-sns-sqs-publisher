#!/bin/bash
set -e

echo "Criando tópicos SNS"

SNS_TOPICS=("order-created-notification")

for topic in "${SNS_TOPICS[@]}"
do
  awslocal sns create-topic --name $topic
  echo "Tópico [$topic] criado"
done

echo "Configuração finalazida!"