"""
Crear una función leontief(C, d) que reciba como parámetros una matriz de demanda intermedia C y un vector de demanda d y devuelva el vector producción x del modelo 
de Leontief asociado.
"""

# Sólución
"""
Para crear una función leontief(C, d) en Julia que calcule el vector de producción x en un modelo de Leontief, necesitamos utilizar la fórmula básica del modelo de Leontief, 
la cual es:

x = (I - C)^(-1) * d

Donde:
C es la matriz de demanda intermedia.
d es el vector de demanda final.
I es la matriz identidad del mismo tamaño que C.
x es el vector de producción total.
"""

using LinearAlgebra

function leontief(C, d)
    n = size(C, 1)  # Obtiene el tamaño de la matriz C
    inv_I_C = inv(I - C)  # Calcula la inversa de (I - C)
    x = inv_I_C * d  # Calcula el vector de producción
    return x
end
