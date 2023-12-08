"""
Formas Bilineales: 

p(x1,x2,x3,y1,y2,y3) = [x1,x2,x3] * A * [y1,y2,y3]

Similar a h(u,v), pero recibe los elementos de los 
vectores como argumentos separados.

Necesita una matriz A para funcionar
"""

using LinearAlgebra

function p(x1, x2, x3, y1, y2, y3, A)
    x = [x1, x2, x3]
    y = [y1, y2, y3]
    return dot(x, A * y)  # Cambio aquí: primero A*y, luego dot product con x
end

# Definición de los vectores x y y
x = [1, 2, 3]
y = [4, 5, 6]

# Definición de la matriz A
A = [1 2 3; 4 5 6; 7 8 9]

# Llamada a la función y impresión del resultado
resultado = p(x[1], x[2], x[3], y[1], y[2], y[3], A)
println(resultado)


