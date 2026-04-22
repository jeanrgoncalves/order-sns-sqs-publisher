#!make
include local.env
export $(shell sed 's/=.*//' local.env)

snsTopics = order-created-notification order-item-created-notification

docker-local:
	docker-compose --file docker/docker-compose.yml up -d
	sleep 5
	$(MAKE) create-sns-topics

create-sns-topics:
	@echo "Criando os topicos SNS"
	sleep 1
	@for topicName in $(snsTopics); do \
		@echo "Criando topico "$$topicName; \
	done\