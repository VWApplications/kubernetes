qtd := 2
namespace := default

# MINIKUBE ===============================
version:
	# Pega a versão do kubectl
	kubectl version --client

info:
	# Pega informações do cluster
	kubectl cluster-info

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

service-url:
	# Pegar a URL do serviço disponibilizado
	minikube service ${service} --url -n ${namespace}

# COMANDOS IMPORTANTES ===============================

create:
	# Executa o arquivo .yaml e salva as revisoes
	kubectl create -f ${file} --save-config --record

all-info:
	# Pega todas as informações do kubernetes.
	kubectl get all -n ${namespace}

scale:
	# Adicionando mais pods no replicaset.
	kubectl scale deployment/${name} --replicas=${qtd}

apply:
	# Usado para aplicar a atualização de algum dado já publicado do .yaml
	kubectl apply -f ${file}

exec:
	# Entrar no bash do pod
	kubectl exec -it ${pod} -- bash

# PODs ====================================

get-pods:
	# Lista todos os pods do cluster.
	kubectl get pods -o wide

describe-pod:
	# Descreve os dados do pod
	kubectl describe pod ${pod}

delete-pod:
	# Deletando um pod
	kubectl delete pod ${pod}

# REPLICASET ==============================

get-replicaset:
	# Verifica se existe replicasets
	kubectl get replicaset


delete-replicaset:
	# Deletar o replicaset
	kubectl delete replicaset ${name}

describe-replicaset:
	# Verificar dados do replicaset.
	kubectl describe replicaset ${name}

# DEPLOYMENT ===============================

get-deployment:
	# Lista todos os deployments
	kubectl get deployments

delete-deployment:
	# Deleta um deployment especifico
	kubectl delete deployment ${name}

describe-deployment:
	# Descreve os dados do deployment
	kubectl describe deployment ${name}

rollout-status:
	# Pega o status de atualização/rollback do deployment.
	kubectl rollout status deployment/${name}

rollout-history:
	# Pega todo o histórico das atualizações do deployment.
	kubectl rollout history deployment/${name}

rollout-undo:
	# Faz um roolback para uma versão anterior do deployment.
	kubectl rollout undo deployment/${name} --to-revision=${revision}

# SERVICES ===================================

get-services:
	# Lista todos os serviços
	kubectl get service ${name}

delete-service:
	# Deleta um serviço especifico
	kubectl delete service ${name}

describe-service:
	# Descreve os dados do serviço
	kubectl describe service ${name}

# NAMESPACES ===========================

get-namespaces:
	# Pega a lista de namespaces
	kubectl get namespaces

create-namespace:
	# Cria um namespace
	kubectl create namespace ${name} --save-config --report

delete-namespace:
	# Deleta um namespace especifico
	kubectl delete namespace ${name}

describe-namespace:
	# Descreve os dados do namespace
	kubectl describe namespace ${name}