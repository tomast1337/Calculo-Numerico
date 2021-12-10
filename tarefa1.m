#{
Utilizando o Octave-Online, apresente um print_logado para cada um dos itens abaixo e anexe a esta tarefa no TEAMS:

-Um vetor coluna v com os números impares no intervalo [1, 15];

-Um vetor linha w com os números pares no intervalo [0, 14];

-Crie a matriz A como o produto v*w;

-Mostre uma sub-matriz interna de A de dimensão 6x6;
#}

clc
# vetor coluna v com números ímpares em [1, 15]
v = [1:2:15]'

# vetor linha v com números pares em [0, 14]
w = [0:2:14]

# matriz A with v*w
A = v*w

# sub-matriz de A de dimensão 6x6
A6x6 = A(1:6, 1:6)