#!/bin/bash
tail /home/vagrant/relatoriolog &> oi &
dialog                                      \
   --title 'Relatório Completo' 	     \
   --tailbox oi                               \
   0 0
