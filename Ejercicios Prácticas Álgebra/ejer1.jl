"""
Crear una funcion leontief (C, d) que reciba como 
parametros una matriz de demanda intermedia C 
y un vector de demanda d y devuelva el vector 
produccion x del modelo de Leontief asociado
"""


using LinearAlgebra

function leontief(C, d)
    # La matriz L es la matriz de Leontief
    L = I - C

    # Resolvemos para encontrar el vector de producción x.
    # Esto es equivalente a resolver L * x = d.
    x = L \ d

    return x
end

# Ejemplo de uso de la función leontief:
C = [0.5 0.4; 0.2 0.3]  # Ejemplo de matriz de demanda intermedia
d = [100; 150]           # Ejemplo de vector de demanda final

# Llamamos a la función y guardamos el resultado en x
x = leontief(C, d)

# Imprimimos el vector de producción x
println("El vector de producción x es: ", x)



