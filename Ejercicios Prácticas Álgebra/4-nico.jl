"""
Crear una función markov(A, v, k) que reciba como parámetros una matriz A tal que las coordenadas de cada columna suman 1, un vector de probabilidad v 
(sus coordenadas suman 1) y un número natural k y devuelva el valor del paso k de la cadena de Markov dada por x_0=v y x_n+1=A*x_n.
"""

# Sólución
"""
La función markov(A, v, k) que quiero implementar en Julia simulará un proceso de Markov. En un proceso de Markov, el estado en el paso n+1 se calcula como el producto 
de la matriz de transición A por el vector de estado en el paso n. Comenzando con un vector de probabilidad inicial v y repitiendo este proceso k veces, podemos encontrar 
el estado de la cadena de Markov en el paso k.
"""

function markov(A, v, k)
    # Verificar que las sumas de las columnas de A sean 1
    for col in eachcol(A)
        if sum(col) != 1
            error("Las columnas de la matriz A deben sumar 1.")
        end
    end

    # Verificar que la suma de los elementos de v sea 1
    if sum(v) != 1
        error("La suma de los elementos del vector v debe ser 1.")
    end

    # Calcular el estado de la cadena de Markov en el paso k
    x = copy(v)
    for i in 1:k
        x = A * x
    end

    return x
end
