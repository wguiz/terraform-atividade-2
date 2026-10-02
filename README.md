O cluster "devops" criado utilizando terraform possui os seguintes nodes:

1 controller: devops-control-plane
2 workers: devops-worker e devops-worker2

Principais componentes provisionados pelo kind:

Control Plane: responsável por gerenciar o cluster, receber comandos do kubectl e controlar os recursos do Kubernetes.
API Server: recebe e processa as requisições feitas ao cluster, como comandos executados pelo kubectl.
Scheduler: decide em qual worker os novos Pods serão executados.
Controller Manager: monitora os recursos do cluster e garante que o estado desejado seja mantido.
etcd: armazena as informações e configurações do cluster.
CoreDNS: fornece resolução de nomes DNS para os serviços e Pods dentro do cluster.
kube-proxy: ajuda a realizar a comunicação de rede entre os Pods e Services.
containerd: responsável por executar e gerenciar os containers nos nodes.


             Cluster devops
                   |
          devops-control-plane
             /           \
            /             \
   devops-worker      devops-worker2

teste
