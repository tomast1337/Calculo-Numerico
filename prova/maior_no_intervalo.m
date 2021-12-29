#{
    Elabore uma função que:
    - receba um vetor de números inteiro e dois índices válidos, como entrada;
    - retorne o maior valor representado no subvetor associado aos dois índices;
#}

function result = maior_no_intervalo(vetor,i,j)
    for k = i:j
        if vetor(k) > result
            result = vetor(k);
        endif
    endfor
end


function result = maior_no_intervalo(vetor,i,j)
    result = max(vetor(i:j));
end
