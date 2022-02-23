#{
Função simpson_elementar_n recebe um função f, um intervalo a e b, um numero de pontos n e ultiliza os pontos para calcular a integral com o polinomio do metodo de Simpson.
#}
function a = simpson_elementar_n(f,a,b,n)
    h = (b-a)/n;
    x = a:h:b;
    y = f(x);
    a = h/3*(y(1)+4*sum(y(2:2:n))+2*sum(y(3:2:n-1))+y(n));