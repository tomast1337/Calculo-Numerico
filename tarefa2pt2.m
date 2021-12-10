#{
2. Faça um script que leia um arco em grau e converta para radianos. Apresente um print_logado simulando a seu script, veja um exemplo:

:::::::::::::::::::::::::::::::::::::::::::::::::::

Entradas:

Digite um arco em grau: 120

Saída:

120 graus equivalem a 2.0944 radianos

:::::::::::::::::::::::::::::::::::::::::::::::::::
#}


arco = input("Digite um arco em grau: ")

printf("%s graus equivalem a %.4f radianos\n", arco, (arco * (pi/180)))
