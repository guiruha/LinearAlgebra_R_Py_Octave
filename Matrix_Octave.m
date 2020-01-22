# Creación de matrices

row = [1 2 3] # para crear un vector fila

col = [1; 2; 3] # para crear un vector columna

M = [1 2 3; 4 5 6; 7 8 9] # para crear una matriz

M(1, 1) # llamamos al elemento a11

M(2, :) # llamamos a la segunda fila

matrix_type(M) # para saber el tipo de la matriz, en este caso full

N = [1 0 0; 0 1 0; 0 0 9] # matriz diagonal
matrix_type(N)

O = repmat(0, 5, 8) # Crea una matriz nula de 5X8 

ones = repmat(1, 3, 7) # Crea una matriz de unos de 3X7

N = diag([1 2 3 4 5]) # Para crear una matriz diagonal

diag(M) # Para encontrar los elementos diagonales de la matriz M

size(M) # Dimensión de la matriz M

# Manipulación de matrices

suma = sum(sum(M)) #suma por columna primero y luego por fila

sumaFil = sum(M, 2) # suma por fila

sumaCol = sum(M) # suma por columna

producto = prod(prod(M)) # productorio de todos los elementos

media = mean(mean(M)) # media de toda la matriz

# Tanto con el producto como por la media se puede por fila y columna también

# Operaciones con matrices

M' # Transpuesta de la matriz

A = [1 -1 ; 0 3]
B = [2 1; -1 0]

trace(A) # Para caluclar la traza

A + B # suma de matrices del mismo orden

2 * A # producto escalar por matriz

A * B # el producto de matrices es tan solo con *

A^3 # potencias con matrices

rank(A) # Rango de la matiz A

inv(A) # Inversa (aproximada) de la matriz A (si la tiene)

inv(A) * A # Comprobamos que da la identidad de resulado