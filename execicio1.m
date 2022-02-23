fx = @(x) cos (x) + 14 * e .^ (-2 * x)

a = 1
b = 4
n = 5
h = (b - a) / n
x = a : h : b
y = fx (x)
I = - 0.6533 
# Trapezio
sum = 0;
printf(" %d / 2 (" , h);
sum = sum + y(1);
for i = 1 : n
  #print step
    printf(" y(%d) + y(%d)  +", i, i + 1);
    sum = sum + y(i);
endfor
sum = sum * h / 2;
printf(" y(%d)  ) = %d\n", n + 1, sum);
printf ("\n")
erro_relativo = abs (I - sum) / abs (I)


