#{
Escreva um script que leia um número inteiro que indique quantos valores positivos devem ser lidos a seguir. Ao final exiba a média aritmética dos valores lidos, o maior valor lido, o menor valor lido e a soma dos valores lidos. Apresente um print_logado simulando o seu script, veja um exemplo:
:::::::::::::::::::::::::::::::::::::::::::::::::::
Entradas:
Digite um valor numérico que indique quanto serao lidos a seguir: 5
Digite um valor numérico: 7
Digite um valor numérico: 3
Digite um valor numérico: 10
Digite um valor numérico: 5
Digite um valor numérico: 2
Saída:
A média calculada é 5.40
O maior valor lido é 10
O menor valor lido é 2
A soma dos valores lidos é 27
:::::::::::::::::::::::::::::::::::::::::::::::::::
#}
printf("Entradas:\n");
valores = [];
quantidade = input("Digite um valor numérico que indique quanto serao lidos a seguir: ");
for i = 1:quantidade
    valor = input("Digite um valor numérico: ");
    valores = [valores valor];
endfor
printf("Saída:\n");
printf("A média calculada é %.2f\n", mean(valores));
printf("O maior valor lido é %d\n", max(valores));
printf("O menor valor lido é %d\n", min(valores));
printf("A soma dos valores lidos é %d\n", sum(valores));