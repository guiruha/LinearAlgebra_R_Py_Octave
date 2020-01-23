# Sistemas compatibles determinados
A = [1 1 2; 2 4 -3; 3 6 -5];
b = [9; 1; 0];
AB = [A b];

# Comprobamos la condicion de Rouché-Frobenius
rank(A) == rank(AB)
rank(A) == 3 # Sistema compatible determinados

# Calculamos la solución
A = [1 1 2; 2 4 -3; 3 6 -5]; b = [9; 1; 0]
x = linsolve(A, b)

A*x == b

# Representación de sistemas con Octave

x = linspace(-10, 10, 100);
y1 = (1 -2*x) / 2;
y2 = 2 + x;
plot(x, y1, x, y2);

A = [2 2; -1, 1], b = [1; 2]; 
linsolve(A, b)

# Representación de tres incognitas

x1 = linspace(-4, 4, 100);
x2a = (3-4*x1)/2;
x2b = (x1-2)/2;
x2c = (1-3*x1)/4;
plot(x1, x2a, x1, x2b, x1, x2c)

# Representación en 3d

%planos
[x, y] = meshgrid(0:0.1:3);
z = (9-x-y)/2;
hold on
mesh(x,y,z)
z = (2*x+4*y-1)/3;
mesh(x,y,z)
z = (3*x+6*y)/5;
mesh(x,y,z)
%Punto de interseccion
plot3(1,2,3,'r','markersize',5,'markerfacecolor','r');
hold off
view(120,30)

# Método de Gauss

rref(AB); #Nos devuelve una matriz escalonada 
# equivalente a la solución del sistemas

# Sistemas compatible indeterminado

A = [1 1 -1;1 -1 1;3 1 -1];
b = [2; 1; 5];
AB = [A b];

rank(A) == rank(AB);
rank(AB) == 3;

# Solucionamos con el metodo de Gauss
rref(AB)

# Representación gráfica de indeterminados
%planos
[x,y] = meshgrid(0:0.1:3);
z = x+y-2;
hold on
mesh(x,y,z)
z = 1-x+y;
mesh(x,y,z)
z = 3*x+y-5;
mesh(x,y,z)
hold off
view(120,30)

