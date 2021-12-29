#{

Elabore um script que:
-limpe a tela, como primeira ação;
-crie um vetor linha de dimenção 1x6, com numeros inteiros;
-crie um vetor coluna de dimenção 1x6, com numeros inteiros;
-crie uma matriz de dimenção 6x6, com o resultado do produtos dos vetores;
-imprima a matriz vetores criados e sub matriz 4x3 fomado pelas ultimas 4 linhas 3 primeiras colunas;

#}

vetorLinha = [1 2 3 4 5 6];
vetorColuna = [1; 2; 3; 4; 5; 6];
matrizProduto = vetorLinha .* vetorColuna;
subMatriz = matrizProduto(2:6, 4:6);

clc;

printf("Vetor Linha:\n");
disp(vetorLinha);
printf("Vetor Coluna:\n");
disp(vetorColuna);
printf("Matriz vetorLinha * vetorColuna:\n");
disp(matrizProduto);
printf("Sub Matriz:\n");
disp(subMatriz);

