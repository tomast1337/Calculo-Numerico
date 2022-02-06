%{
Função receb a matriz A e o vetor b, e retorna o vetor x
%}
function x = gauss_pivot(A,b)
    % Criar vetor de permutação
    n = size(A, 1);
    r = zeros(n, 1);
    for i = 1 : 1 : n    
    r(i) = i;
    end
    % Aplicar eliminação de Gauss e organizar vetor de permutação imprimindo os passos
    for k = 1 : 1 : n - 1
        % Encontrar o pivô
        [p, i] = max(abs(A(k:n, k)));
        i = i + k - 1;
        printf("\n\nPasso %d\n", k);
        printf("\nPivo: linha %d\n", i);
        printf("\nMatriz A:\n");
        disp(A);
        printf("\nVetor b:\n");
        disp(b);
        % Trocar linhas
        if i ~= k
            A([k i], :) = A([i k], :);
            r([k i]) = r([i k]);
        end
        % Eliminar
        for i = k + 1 : 1 : n
            m = A(i, k) / A(k, k);
            printf("\nMultiplicador linha %d: %f\n", i, m);
            A(i, k:n) = A(i, k:n) - m * A(k, k:n);
            b(i) = b(i) - m * b(k);
        end
    end
    printf('\nMatriz A:\n');
    disp(A);
    printf('\nVetor b:\n');
    disp(b);
    printf('\nVetor r:\n');
    disp(r);
    % Resolver sistema
    x = zeros(n, 1);
    x(n) = b(n) / A(n, n);
    for i = n - 1 : -1 : 1
        s = 0;
        for j = i + 1 : 1 : n
            s = s + A(i, j) * x(j);
        end
        x(i) = (b(i) - s) / A(i, i);
    end
end