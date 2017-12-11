#!/bin/bash
while : ; do
resposta=$(
dialog --stdout \
--title 'MONITORAMENTO' \
--menu 'Escolha uma opção:' \
0 0 10 \
1 'Relatório atual' \
2 'Relatório completo' \
3 'Opções de serviço' \
4 'Equipamentos monitorados' \
0 'Sair' )
[ $? -ne 0 ] && break
case "$resposta" in
1) /home/vagrant/reatu.sh ;;
2) /home/vagrant/recomp.sh ;;
3) /home/vagrant/iniciar.sh ;;
4) /home/vagrant/equi.sh ;;
0) clear ; exit 0 ;;
*) echo "Opção invalida" ;;
esac
done
