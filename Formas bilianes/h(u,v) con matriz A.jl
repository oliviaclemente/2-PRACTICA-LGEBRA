
"""
Formas Bilineales: 

h(u,v) = transpose(u) * A * v

Esta forma calcula el producto bilineal usando una 
matriz A entre los vectores u y v

Necesita una matriz A para funcionar
"""

function h(u, v, A)
    return transpose(u) * A * v
end

# Definicion de los vectores u y v
u = [1,2,3]
v = [4,5,6]

# Definicion de la matriz A
A = [1 2 3; 4 5 6; 7 8 9]

# Llamada a la función y impresión del resultado
resultado = h(u, v, A)
println(resultado)