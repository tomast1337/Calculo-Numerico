#{
1. Elabore um script que leia três notas de um aluno e calcule a média aritmética.
Mostre, ao final, as três notas do aluno, a média calculada e uma mensagem "APROVADO" se a média for maior ou igual a 7, "REPROVADO" se a média for menor que 3.
Se a média estiver entre 7 e 3, leia uma quarta nota (final) que irá compor uma nova média com a média anterior e,
neste caso, mostre uma mensagem "APROVADO EM FINAL" se a nova média for maior ou igual a 5, "REPROVADO EM FINAL" se a nova média for menor que 5.
Apresente um print_logado simulando o seu script, veja um exemplo:
:::::::::::::::::::::::::::::::::::::::::::::::::::
Entradas:
Digite um valor numérico: 10
Digite um outro valor numérico: 7
Digite mais um valor numérico: 5
Saída:
APROVADO : a média calculada entre 10, 7 e 5 é igual a 7.33
:::::::::::::::::::::::::::::::::::::::::::::::::::
outra simulação:
:::::::::::::::::::::::::::::::::::::::::::::::::::
Entradas:
Digite um valor numérico: 5
Digite um outro valor numérico: 7
Digite mais um valor numérico: 5
Digite uma quarta nota: 6
Saída:
APROVADO EM FINAL: a média calculada entre 5, 7, 5 e 6 é igual a 5.84
:::::::::::::::::::::::::::::::::::::::::::::::::::
#}
situacao = "";
printf("Entradas:\n");
notas = [];
notas = [notas input("Digite um valor numérico: ")];
notas = [notas input("Digite um outro valor numérico: ")];
notas = [notas input("Digite mais um valor numérico: ")];

if (mean(notas) < 7 && mean(notas) > 3)
    notas = [notas input("Digite uma quarta nota: ")];
    if (mean(notas) < 5)
        situacao = "REPROVADO EM FINAL";
    else
        situacao = "APROVADO EM FINAL";
    endif
else
    if (mean(notas) < 3)
        situacao = "REPROVADO";
    else
        situacao = "APROVADO";
    endif
endif

printf("Saída:\n")
if (length(notas) = 3)
    printf("%s : a média calculada entre %d, %d e %d é igual a %.2f\n", situacao, notas(1), notas(2), notas(3), mean(notas))
else
    printf("%s : a média calculada entre %d, %d, %d e %d é igual a %.2f\n", situacao, notas(1), notas(2), notas(3), notas(4), mean(notas))
endif

