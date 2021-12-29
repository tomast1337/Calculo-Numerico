#{

Elaboro um script que:

- limpe a tela
- leia um valor inteiro
- motre uma das sequintes mensagens: par e positivo, par e negativo, impar e negativo, impar e positivo ou zero;
#}

clc;

numero = input("Digite um número: ");
parOuImpar = "";
PositivoOuNegativo = "";

if (mod(numero, 2) == 0)
    parOuImpar = "par";
else
    parOuImpar = "impar";
endif

if (numero > 0)
    PositivoOuNegativo = "positivo";
elseif (numero < 0)
    PositivoOuNegativo = "negativo";
else
    PositivoOuNegativo = "zero";
endif

printf("%s %s \n" , parOuImpar, PositivoOuNegativo);
