
function gauss(A)
    for j in 1:(length(A[:,1])-1)
        for i in j+1:length(A[:,1])
            A[i,:]=A[i,:]-(A[i,j]/A[j,j])*A[j,:]
                end
    end
    return A
    end
    gauss(A)
    B=[1 3 5 1; 2 1 4 6; 3 3 1 5]

B = [1 3 5 1; 2 1 4 6; 3 3 1 5]
A = [1 3 2; 2 5 1; 1 1 3]
    using LinearAlgebra
    function gauss(A)
    for j in 1:(length(A[:,1])-1)
        for i in j+1: length(A[:,1])
            A[i,:] = A[i,:] - (A[i,j] / A[j,j]) * A[j,:]
        end
    end
    return A
end


function son_linealmente_independientes(S)
    # Convertir los vectores en una matriz
    A = hcat(S...)
    
    # Aplicar la eliminación de Gauss-Jordan para triangularizar la matriz
    for j = 1:size(A, 2)
        # Buscar un pivote en la columna actual
        pivot_row = 0
        for i = j:size(A, 1)
            if A[i, j] != 0
                pivot_row = i
                break
            end
        end
        
        # Si no se encuentra un pivote, los vectores son linealmente dependientes
        if pivot_row == 0
            return false
        end
        
        # Intercambiar filas si es necesario
        if pivot_row != j
            A[j, :], A[pivot_row, :] = A[pivot_row, :], A[j, :]
        end




      # Hacer ceros en la columna por debajo del pivote
      for i = (j + 1):size(A, 1)
        factor = A[i, j] / A[j, j]
        A[i, j:end] -= factor * A[j, j:end]
    end
end

# Verificar si todos los elementos en la diagonal principal son distintos de cero
for i = 1:min(size(A)...)
    if A[i, i] == 0
        return false
    end
end

return true
end

# Ejemplo de uso:
S = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]
resultado = son_linealmente_independientes(S)
println("¿Los vectores son linealmente independientes? $resultado")







