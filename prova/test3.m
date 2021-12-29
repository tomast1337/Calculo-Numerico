#{
Elabore um script que:
- limpe a tela
-Leia coeficientes de uma equação do segundo grau: a , b e c.
-calcule o valor delta da equação
-motres uma das sequintes mensagens 'não existe raiz', ou 'raiz única' ou 'raizes distintas'    
#}
clc;
a = input("Digite o valor de a: ");
b = input("Digite o valor de b: ");
c = input("Digite o valor de c: ");

delta = (b*b) - (4*a*c);

if(delta < 0) 
    printf ("Não existe raiz\n");
else
    if(delta == 0) 
        printf ("Raizes distintas\n");
    else
        printf ("Raiz única\n"); 
    endif
endif
