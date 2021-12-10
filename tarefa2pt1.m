#{
1. Faça um script que leia as 3 notas de um aluno, calcule e exiba a média final deste aluno. Considerar que a média é ponderada e que os pesos para as notas são: 2, 3 e 5, respectivamente. Apresente um print_logado simulando a seu script, veja um exemplo:

:::::::::::::::::::::::::::::::::::::::::::::::::::

Entradas:

Digite um valor numérico: 10

Digite um outro valor numérico: 7

Digite mais um valor numérico: 5

Saída:

A média ponderada entre 10, 7 e 5 é igual a 6.67

:::::::::::::::::::::::::::::::::::::::::::::::::::
#}

notas = []
pesos = [2, 3, 5]

clc

for i = 1:2
    nota = input ("Digite um valor numérico: ")
    notas = [notas, nota]
endfor

nota = input ("Digite mais um valor numérico: ")
notas = [notas, nota]

#media ponderada
media = sum(notas .* pesos) / sum(pesos)

printf("A média ponderada entre %d, %d e %d é igual a %.2f", notas(1), notas(2), notas(3), media)
