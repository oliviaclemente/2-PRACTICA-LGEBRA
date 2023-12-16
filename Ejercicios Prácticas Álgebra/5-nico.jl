"""
Crear una función rango(f) que reciba como parámetro una aplicación lineal f: R4 → R4 y devuelva el rango de f .
"""

using LinearAlgebra

function rango(f)
    # f es una función que toma un vector y devuelve un vector
    # Generamos una matriz con las imágenes de la base estándar de R4
    base_std = [f(e) for e in eachcol(I, 4)]
    # Calculamos el rango de la matriz resultante
    return rank(hcat(base_std...))
end

