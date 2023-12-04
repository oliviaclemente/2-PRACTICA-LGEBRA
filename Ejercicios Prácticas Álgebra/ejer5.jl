"""
Crear una funcion rango(f ) que reciba como 
parametro una aplicaci ́on lineal f :R4 → R4 y 
devuelva el rango de f .
"""

using LinearAlgebra

function rango(f::AbstractMatrix)
    # Aseguramos que la matriz es cuadrada y de tamaño 4x4
    if size(f) != (4, 4)
        error("La función debe ser representada por una matriz 4x4.")
    end
    
    # Calculamos el rango de la matriz que representa la aplicación lineal
    return rank(f)
end

# Ejemplo de uso de la función rango:
f = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1] # La matriz identidad en R^4

# Llamamos a la función rango con la matriz f
rango_f = rango(f)

println("El rango de la función es: ", rango_f)
