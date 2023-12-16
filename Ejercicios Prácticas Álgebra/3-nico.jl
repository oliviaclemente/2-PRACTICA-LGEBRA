"""
Crear una función solutionBasis(A) que reciba como parámetro una matriz A y devuelva una base del subespacio de ecuaciones Ax = 0.
"""

function solutionBasis(A)
    return nullspace(A)
end
