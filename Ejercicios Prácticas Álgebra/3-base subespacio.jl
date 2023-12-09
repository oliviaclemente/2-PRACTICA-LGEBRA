"""
Crear una funci on solutionBasis(A) que reciba como 
parametro una matriz A y devuelva una base del 
subespacio de ecuaciones Ax = 0.
"""

using LinearAlgebra

function solutionBasis(A)
    # Calculamos la base del espacio nulo (null space) de la matriz A.
    # Esta es la base del subespacio de soluciones de Ax = 0.
    return nullspace(A)
end

# Ejemplo de uso:
A = [1 2 3; 4 5 6; 7 8 9]  # Reemplaza esto con tu propia matriz

# Llamamos a la función y guardamos la base del subespacio de soluciones
basis = solutionBasis(A)

println("Una base del subespacio de soluciones es:")
println(basis)
