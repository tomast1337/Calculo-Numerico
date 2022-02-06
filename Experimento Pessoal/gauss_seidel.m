%{
Função gauss_seidel recebe a matriz A e o vetor b, numero de iterações n, tolerancia de erro, e retorna o vetor x.
Imprimindo o passo a passo o vetor do método.
%}
function x = gauss_seidel(A, b, n, erro)
    x = zeros(length(b), 1);
    x_ant = x;
    for i = 1:n
        for j = 1:length(b)
            soma = 0;
            for k = 1:length(b)
                if k ~= j
                    soma = soma + A(j, k) * x(k);
                end
            end
            x(j) = (b(j) - soma) / A(j, j);
        end
        fprintf('\n\nIteração %d\n', i);
        disp(x);
        if norm(x - x_ant) < erro
            break;
        end
        x_ant = x;
    end
end
