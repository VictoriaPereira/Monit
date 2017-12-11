#!/bin/bash
while : ; do
	resposta=$( dialog --stdout 				\
	--title 'MONITORAMENTO' 						\
	--menu 'Escolha uma opção:' 0 0 10	\
	1 'Adicionar ou remover equipamentos' 	\
	2 'Relatório atual' 								\
	3 'Relatório completo' 							\
	4 'Opções do serviço' 					\
	5 'Equipamentos monitorados' 				\
	0 'Sair' )
	[ $? -ne 0 ] && break
	case "$resposta" in
		1) /home/vagrant/add.sh ;;
		2) /home/vagrant/reatu.sh ;;
		3) /home/vagrant/recomp.sh ;;
		4) /home/vagrant/iniciar.sh ;;
		5) /home/vagrant/equi.sh ;;
		0) clear ; exit 0 ;;
		*) echo "Opção invalida" ;;
	esac
done
