#{
   Considere a função f(x) = sqrt(x-1) + cos(2x) e faça oque se pede.
#}

u = 3
fx = @(x)sqrt(x-1) + cos(2*x)

#{
---------------------------------------//---------------------------------------
    Determine os coeficientes do plolinomio que interpola a função acima nos pontos,
    x_0 = 1, 
    x_1 = 2, 
    x_2 = 4, 
    x_3 = u+5,
#}

x_0 = fx(1), 
x_1 = fx(2), 
x_2 = fx(4), 
x_3 = fx(u+5),

b = [x_0; x_1; x_2; x_3]

A = [(1)^0 (1)^1 (1)^2 (1)^3;
     (2)^0 (2)^1 (2)^2 (2)^3;
     (4)^0 (4)^1 (4)^2 (4)^3;
  (u+5)^0 (u+5)^1 (u+5)^2 (u+5)^3]

y = A\b

#{
---------------------------------------//---------------------------------------
    Determine o erro relativo da aplicação do plolinomio, no ponto z = u +¨6
#}

z = u + 6

p = y
p = flipud(p)

erro = abs((fx(z) - polyval(p, z)) / fx(z))


#{
---------------------------------------//---------------------------------------
   Realize um plote duplo da função f(x) e o plolinomio p(x) interpolador. 
   no intervalo [1, u+7]
#}

x = 1: 0.1: (u+7);
plot(x, fx(x), x, polyval(p, x))