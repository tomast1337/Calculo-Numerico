#{
Função simpson_elementar_3 recebe um função f, um intervalo a e b e ultiliza 3 pontos para calcular a integral com o polinomio do metodo de Simpson.
#}

function a = simpson_elementar_3(f,a,b)
  h = (b-a)/2;
  x1 = a;
  x2 = a + h;
  x3 = b;
  y1 = f(x1);
  y2 = f(x2);
  y3 = f(x3);
  a = h/6 * (y1 + 4*y2 + y3);