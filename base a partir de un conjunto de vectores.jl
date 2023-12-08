using LinearAlgebra
function find_basis(S)
    A=[S[1]]
    n=length(S)
    D=[S[1]]
    for i in 2:n
        B=[S[i]]
        C=vcat(A,B)
        if are_li(i)!=0
            D=vcat(A,B)
        end
    end
    return D
end
