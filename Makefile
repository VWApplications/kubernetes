version:
	# Pega a versão do kubectl
	kubectl version --client

ip:
	# Pegar o IP do cluster
	minikube ip

delete-cluster:
	# Deleta o cluster
	minikube delete

start-cluster:
	# Cria o cluster
	minikube start

status-cluster:
	# Verifica o status do cluster
	minikube status

get-pods:
	# Lista todos os pods do cluster.
	kubectl get pods -o wide

describe-pod:
	# Descreve os dados do pod
	kubectl describe pod ${pod}

delete-pod:
	# Deletando um pod
	kubectl delete pod ${pod}

create:
	# Executa o arquivo .yaml e salva as revisoes
	kubectl create -f ${file} --save-config --record

all-info:
	# Pega todas as informações do kubernetes.
	kubectl get all

replicaset:
	# Verifica se existe replicasets
	kubectl get replicaset

qtd := 2

delete-replicaset:
	# Deletar o replicaset
	kubectl delete replicaset ${name}

describe-replicaset:
	# Verificar dados do replicaset.
	kubectl describe replicaset ${name}

scale:
	# Adicionando mais pods no replicaset.
	kubectl scale deployment/${name} --replicas=${qtd}

get-deployment:
	# Lista todos os deployments
	kubectl get deployments

delete-deployment:
	# Deleta um deployment especifico
	kubectl delete deployment ${name}

describe-deployment:
	# Descreve os dados do deployment
	kubectl describe deployment ${name}

apply:
	# Usado para aplicar a atualização de algum dado já publicado do .yaml
	kubectl apply -f ${file}

rollout-status:
	# Pega o status de atualização/rollback do deployment.
	kubectl rollout status deployment/${name}

rollout-history:
	# Pega todo o histórico das atualizações do deployment.
	kubectl rollout history deployment/${name}

rollout-undo:
	# Faz um roolback para uma versão anterior do deployment.
	kubectl rollout undo deployment/${name} --to-revision=${revision}

exec:
	# Entrar no bash do pod
	kubectl exec -it ${pod} -- bash

service-url:
	# Pegar a URL do serviço disponibilizado
	minikube service ${service} --url