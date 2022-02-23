#{
Função aproximacao_trapezio_fxy recebe como parametro a função f(x,y), o intervalo  a, b, c e o numero de subintervalos n, imprimindo dos passos da soma.
#}

function a = aproximacao_trapezio_fxy(f,a,b,c,n)
    h = (b-a)/n;
    soma = 0;
    for i = 1:n-1
        soma = soma + f(a+i*h,c);
    endfor
    a = (h/2)*(f(a,c)+f(b,c)+2*soma);
    
  