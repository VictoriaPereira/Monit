#!/bin/bash
tail /home/vagrant/relatorio &> out &
dialog                                         \
   --title 'Relatório Atual'  \
   --tailbox out                               \
              0 0
