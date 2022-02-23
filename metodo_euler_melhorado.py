def metodo_euler_melhorado(f, x0, y0, h, n):
    x = [x0]
    y = [y0]
    for i in range(n):
        k1 = f(x[i], y[i])
        k2 = y[i] + h*k1

        x.append(x[i] + h)
        y.append(y[i] + (h/2)*(k1+k2))

        print(f'k1 = {k1}')
        print(f'k2 = {k2}')
        print(f'x = {x[i+1]}')
        print(f'y = {y[i+1]}')
        print("-----------------------------")
    return x, y

def fy(x, y): return y/(x/2.5)
def f(x): return pow(0.5, -1.5)*pow(x, 2.5)

x = 2
x0 = .5
y0 = .5
h = .5
n = int(2/h)-1
_, y = metodo_euler_melhorado(fy, x0, y0, h, n)

print(f'resultado real f({x})={f(x)}')
print(f'resultado obtido y({x})={y[-1]}')
erro = abs(f(x)-y[-1])/abs(f(x))
print(f'erro: {erro}')
