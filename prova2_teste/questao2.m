function y = gauss_seidel_it(A,b,x0,k)
    [L,C] = size(A);
    for it = 1:k    
        fprintf('%d: ',it);        
        for i = 1:L
            soma=0;
            for j = 1:C
                if(j<i)
                    soma=soma+A(i,j)*xk(j);
                elseif (j>i)
                    soma=soma+A(i,j)*x0(j);
                endif
            endfor
            xk(i)=1/A(i,i)*(b(i)-soma);
            fprintf('%.4f  ', xk(i));
        endfor
        x0=xk;
        fprintf('\n');    
    endfor
    y=xk;
end

function y=sassenfeld(A)
    [L,C]=size(A);
    soma=0;
    for j=2:C
        soma=soma+abs(A(1,j));
    end
    beta(1)=soma/abs(A(1,1)); % calcula Beta_1
    for i=2:L
        soma=0;
        for j=1:C
            if(j<i)
                soma=soma+beta(j)*abs(A(i,j));
            elseif (j>i)
                soma=soma+abs(A(i,j)); 
            end
        end
        beta(i)=soma/abs(A(i,i));% calcula os Beta_i
    end
    y=beta;
end

#{
    Considere o sistema linear Ax = b, ou u é o ultimo digito de sua matricula,
    Faça oque se pede.
#}

u = 3

A = [(u+4) -1 0 0; -1 (u+6) -1 0; 0 -1 (u+4) -1; 0 0 -1 (u+6)]
b = [(1+u); (1+u); (1+u); (1+u)]

#{
    a) Verifique se o critério de Sassenfeld é satisfeito e mostre o valor de Bmax.
#}

sassenfeld(A)

max(ans)

#{
---------------------------------------//---------------------------------------
    b)Mostre a solução apŕoximada do sistema apos 3 iterações. partindo do ponto (u+1,u+1,u+1,u+1)
#}

gauss_seidel_it(A, b, [(u+1) (u+1) (u+1) (u+1)], 3)

#{
---------------------------------------//---------------------------------------
    c)Motre o valor do erro relativo após 3 iterações do método, onde a sua formula é
    max(|x³1-x³1|,|x³2-x³2|,|x³3-x²3|,|x³4-x²4|)/
    max(|x³1|,|x³2|,|x³3|,|x³4|)
#}

x_2 = gauss_seidel_it(A,b,b,2)
x_3 = gauss_seidel_it(A,b,b,3)

erro = max(abs(x_3-x_2))/max(x_3)
