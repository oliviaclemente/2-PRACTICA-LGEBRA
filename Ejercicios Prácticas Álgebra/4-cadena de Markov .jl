"""
Crear una funcion markov(A, v, k) que reciba como 
parametros una matriz A tal que las coordenadas de 
cada columna suman 0, un vector de probabilidad v 
(sus coordenadas suman 0) y un numero natural k y 
devuelva el valor del paso k de la cadena de Markov 
dada por x0 = v y xn+1 = Axn.
"""

function markov(A, v, k)
    # Comprobamos que A es una matriz estocástica
    if !all(sum(A, dims=1) .≈ 1)
        error("Las columnas de la matriz A deben sumar 1.")
    end
    
    # Comprobamos que v es un vector de probabilidad
    if sum(v) != 1
        error("La suma de las coordenadas del vector v debe ser 1.")
    end
    
    # Realizamos k pasos de la cadena de Markov
    for i in 1:k
        v = A * v
    end
    
    return v
end

# Ejemplo de uso:
# Definimos una matriz estocástica A y un vector de probabilidad v
A = [0.2 0.1 0.3 0.4; 0.3 0 0.4 0.2; 0.4 0.6 0.3 0.1; 0.1 0.3 0 0.3]  # Reemplaza esto con tu propia matriz estocástica
v = [0.1, 0.2, 0.3, 0.4]           # Reemplaza esto con tu propio vector de probabilidad inicial

# Realizamos k pasos en la cadena de Markov
k = 6  # Número de pasos

# Llamamos a la función markov
resultado = markov(A, v, k)

println("El estado de la cadena de Markov después de $k pasos es: ", resultado)
