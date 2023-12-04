"""
Crear una funci ́on dimension(S) que reciba como 
parametro una lista S de vectores de Rn y devuelva 
la dimension del subespacio que generan
"""

using LinearAlgebra

function dimension(S)
    # Convertimos la lista de vectores en una matriz. Cada vector es una columna.
    M = hcat(S...)

    # Calculamos el rango de la matriz, que es la dimensión del subespacio generado.
    return rank(M)
end

# Ejemplo de uso:
# Supongamos que tienes una lista de vectores S que quieres comprobar.
S = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]  # Deberías reemplazar esto con tus propios vectores

# Llamamos a la función dimension con la lista de vectores.
dim = dimension(S)

println("La dimensión del subespacio generado es: ", dim)
