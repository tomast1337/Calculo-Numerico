u = 3;
k = rem(u,4) +1;
A = [(u+2) 2 1 1; 1 (u+1) 2 -1; 3 2 (u+1) -2; 4 3 2 (u+2)];
b = [(7-u);(2-u);(4-u);(10-u)];

print("A = ");
disp(A);
print("b = ");
disp(b);

#{
---------------------------------------//---------------------------------------
a) Resolva o sistema de equações e mostre a soma dos valores de x.
#}

x = A\b;

disp("x = ");
disp(x);

disp("Soma dos valores de x = ");
disp(sum(x));

#{
---------------------------------------//---------------------------------------
    b) Determine as matrizes P, L e U, associadas a matriz A, e mostre que P*A = L*U.
#}

[L,U,P]=lu(A);

disp("P = ");
disp(P);

disp("L = ");
disp(L);

disp("U = ");
disp(U);

disp("P*A = ");
disp(P*A);

disp("L*U = ");
disp(L*U);
#{
---------------------------------------//---------------------------------------
    c) Determine a coluna K da inverse de A, ultilizando a decomposição LU.
#}
y = L\P(:,k);

colk = U\y;

invA = inv(A);

disp("Coluna inverça K de A = ");
disp(colk);

disp("A-¹ = ");
disp(invA);