"""
Formas Bilineales: 

g(x1,x2,x3,y1,y2,y3) = x1*y1 + x2*y2 + x3*y3

Similar a f(u,v), pero toma los elementos de los 
vectores como argumentos separados.
"""

function g(x1, x2, x3, y1, y2, y3)
    return x1*y1 + x2*y2 + x3*y3
end

# Definicion de los vectores x y y
x = [1,2,3]
y = [4,5,6]

# Llamada a la función y impresión del resultado
resultado = g(x[1], x[2], x[3], y[1], y[2], y[3])
println(resultado)
