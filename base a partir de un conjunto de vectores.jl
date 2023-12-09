using LinearAlgebra

function are_li(V)
    A = hcat(V...)  # Convertir los vectores en una matriz
    A = float(A)  # Convertir la matriz a tipo flotante
    m, n = size(A)
    for j = 1:n
        pivot = findfirst(!iszero, A[j:m, j])
        if pivot === nothing
            return false
        end
        pivot += j - 1

        if pivot != j
            A[j, :], A[pivot, :] = A[pivot, :], A[j, :]
        end

        for i = j+1:m
            A[i, :] -= A[i, j] / A[j, j] * A[j, :]
        end
    end

    return true
end

function find_basis(S)
    A = [S[1]]
    D = [S[1]]

    for i in 2:length(S)
        B = [S[i]]
        C = vcat(A, B)
        if are_li(C)
            push!(D, B[1])
            A = C
        end
    end
    return D
end

# Ejemplo
S = [[6, 0, 2], [1, 4, 9], [8, 7, 4]]
base = find_basis(S)
println("La base encontrada es: ")
println(base)
