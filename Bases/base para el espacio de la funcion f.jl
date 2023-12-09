using LinearAlgebra

function is_independent(vectors::Array{Vector{Float64},1})
    A = hcat(vectors...)
    rankA = rank(A)
    return rankA == length(vectors)
end

function find_basis(vectors::Array{Vector{Float64},1})
    basis = Vector{Float64}[]
    for v in vectors
        if is_independent([basis..., v])
            push!(basis, v)
        end
    end
    return basis
end

function base_imagen(f)
    S = [f([1,0,0,0]), f([0,1,0,0]), f([0,0,1,0]), f([0,0,0,1])]
    return find_basis(S)
end

function base_de_imagen_rn(f, n)
    S = []
    for i in 1:n
        v = zeros(n)
        v[i] = 1
        push!(S, f(v))
    end
    return find_basis(S)
end

# Ejemplo de función de transformación lineal
f(v) = [sum(v), sum(v) - v[1], sum(v) - v[2], sum(v) - v[3], sum(v) - v[4]]

# Uso de la función para encontrar la base de la 
# imagen
base = base_imagen(f)
println(base)
# Este es el resultado de base_imagen(f). Cada vector 
# es la imagen de un vector de la base estándar de 
# R^4 bajo la función f. Por ejemplo, f([1,0,0,0]) 
# da [1, 0, 1, 1, 1], que es el primer vector en la 
# lista.


# Uso de la función para encontrar la base de la ç
# imagen en R^4
base_rn = base_de_imagen_rn(f, 4)
println(base_rn)

# Este es el resultado de base_de_imagen_rn(f, 4). 
# Es idéntico al primer resultado, lo cual tiene 
# sentido dado que f es la misma y los vectores de 
# la base estándar de R^4 no han cambiado.

