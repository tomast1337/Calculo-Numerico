#{
Função aproximacao_trapezio recebe como parametro a função f, o intervalo inicial a, o intervalo final b e o numero de subintervalos n, imprimindo dos passos da soma.
#}

function a = aproximacao_trapezio(f,a,b,n)
  h = (b-a)/n;
  soma = 0;
  for i = 1:n
    soma = soma + f(a + (i-1)*h);
    disp(soma);
  endfor
  a = h*(f(a) + f(b) + 2*soma);