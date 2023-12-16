"""
Crear una funcion rango(g ) que reciba como 
parametro una aplicacion lineal g: R4 → R4 y 
devuelva el rango de g .
"""

using LinearAlgebra

function rango(matriz::AbstractMatrix)
    if size(matriz) != (4, 4)
        error("La función debe ser representada por una matriz 4x4.")
    end
    return rank(matriz)
end

# Usamos un nombre de variable diferente para evitar conflictos
g = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1] # La matriz identidad en R^4
rango_g = rango(g)
println("El rango de la función es: ", rango_g)
