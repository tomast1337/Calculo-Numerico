%{
Função forma_de_newton recebe um vetor de pontos e um valor de x, e retorna o valor de f(x) e a derivada de f(x) para o método de Newton.
Imprimindo o passo a passo o vetor do método.
%}
function [f, df] = forma_de_newton(pontos, x)
    f = 0;
    df = 0;
    for i = 1:length(pontos)
        f = f + pontos(i) * (x^(i-1));
        df = df + (i-1) * pontos(i) * (x^(i-2));
    end
end
