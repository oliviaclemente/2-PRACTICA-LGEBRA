"""
Formas Bilineales: 

f(u,v) = u[1]*v[1] + u[2]*v[2] + u[3]*v[3]

Esta forma toma dos vectores u y v y calcula su 
producto punto (producto escalar).
"""

function f(u, v)
    return u[1]*v[1] + u[2]*v[2] + u[3]*v[3]
end

# Definicion de los vectores u y v
u = [1,2,3]
v = [4,5,6]

# Llamada a la función y impresión del resultado
resultado = f(u, v)
println(resultado)