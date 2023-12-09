# Eliminación Gaussiana con pivoteo parcial 

# Este método fundamental en álgebra lineal para 
# transformar una matriz a su forma de matriz 
# triangular superior. Esto es útil para resolver 
# sistemas de ecuaciones lineales, determinar el 
# rango de una matriz, y encontrar la inversa de 
# matrices invertibles, entre otras aplicaciones

using LinearAlgebra

A = [1 3 2; 2 5 1; 1 1 3]
function gauss(A)
    for j in 1:(length(A[:,1])-1)
        for i in j+1:length(A[:,1])
            A[i,:] = A[i,:] - (A[i,j] / A[j,j]) * A[j,:]
        end
    end
    return A
end

gauss(A)

# Resultado: matriz triangular superior