#{
Elabore uma função - 'f_desvio_padrao' - que receba um vetor de entrada e retorne o desvio padrão dos valores contidos no vetor.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::

O que é desvio padrão, exemplo:

em uma equipe de basquete, os atletas possuem as seguintes alturas: 1,80; 1,95; 1,98; 1,88; 2,04. Qual a altura média da equipe? E qual o desvio padrão de altura da equipe?

Primeiramente, calculando a média, temos:

alturas = [1.80 1.95 1.98 1.88 2.04]

M=(1,80+1,95 + 1,98+1,88 + 2,04)/5=1,93

Em seguida, calculando o desvio padrão:

Dp= sqrt(
    ((1,80-1,93)^2+(1,95-1,93)^2+(1,98-1,93)^2+(1,88-1,93)^2+(2,04-1,93))^2/
                                    4
) = 0,092736
#}

function desvio_padrao = f_desvio_padrao(vetor)
    desvio_padrao = 0;
    media = mean(vetor);
    tamanho = size(vetor,2);
    for i = 1:tamanho 
        desvio_padrao = desvio_padrao + (vetor(i) - media) .^2;
    endfor
    desvio_padrao = sqrt(desvio_padrao ./ (tamanho - 1));
endfunction
