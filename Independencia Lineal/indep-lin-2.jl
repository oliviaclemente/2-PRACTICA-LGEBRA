using LinearAlgebra

S = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]

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


resultado = son_linealmente_independientes(S)
println("¿Los vectores son linealmente independientes? $resultado")