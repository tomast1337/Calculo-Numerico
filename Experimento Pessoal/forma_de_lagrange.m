%{
Função forma_de_lagrange recebe um vetor de pontos e um valor de x, e retorna o valor da função de Lagrange para esse x.
Imprimindo o passo a passo o vetor do método.
%}
function y = forma_de_lagrange(x,pontos)
    n = length(pontos);
    y = 0;
    for i = 1:n
        produto = 1;
        for j = 1:n
            if i ~= j
                produto = produto * (x - pontos(j))/(pontos(i) - pontos(j));
            end
        end
        y = y + produto * pontos(i);
    end
end