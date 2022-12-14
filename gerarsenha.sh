#!/bin/bash
# ----------------------------------------------------------------------------
# Autor: Ezequiel Sousa
# Função para gerar senhas alfanuméricas com Shell Scripiting
# ./gerarsenha.sh
# Desde: ter Fev 14 02:13:30 BRT 2022
# Versão: 1.1.0
# Licença: GPL
printf "
 ----------------------------------------------------------------------------
                           _                             _               
                          | |                           | |              
   __ _  ___ _ __ __ _  __| | ___  _ __   ___  ___ _ __ | |__   __ _ ___ 
  / _` |/ _ \ '__/ _` |/ _` |/ _ \| '__| / __|/ _ \ '_ \| '_ \ / _` / __|
 | (_| |  __/ | | (_| | (_| | (_) | |    \__ \  __/ | | | | | | (_| \__ \
  \__, |\___|_|  \__,_|\__,_|\___/|_|    |___/\___|_| |_|_| |_|\__,_|___/
   __/ |                                                                 
  |___/                                                                   
 ---------------------------------------------------------------------------- \n"
gerarsenha(){
 letras='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
 numeros='0123456789'
 caracteres='@#$%"&"*-()_+=<>;:?[],.'
 lista="$letras$numeros$caracteres"
 
 printf "Qual o tamanho da senha?(Exemplo: 24)\n"
 read max
 
 tamanho=${#lista}
 
 for ((i = 0; i < $max; i++ ))
  do
   ordem=$((RANDOM % $tamanho + 1))
   senha=$(echo $lista | cut -c "$ordem")
   echo -n $senha
  done
 echo
 printf "Senha gerada com sucesso!\n"
}
gerarsenha