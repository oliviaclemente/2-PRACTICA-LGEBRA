"""
Crear una función dimension(S) que reciba como parámetro una lista S de vectores de R^n y devuelva la dimensión del subespacio que generan.
"""

function gauss(A)
    A=1.0*A
    n=length(A[:,1])
    m=length(A[1,:])
    l=1
     for j in 1:(n-1)
        i=j+1
        while i <= n && l<=m
             if A[j,l]!=0
                 A[i,:]=A[i,:]-(A[i,l]/A[j,l])*A[j,:]
                 i+=1
             else
                k=j
                while k<=n && A[k,l]==0
                    k+=1
                end
                if k>n
                     l=l+1
                else
                    u=A[j,:]
                    v=A[k,:]
                    A[j,:]=v
                    A[k,:]=u
                end
            end
        end
        l+=1	
    end
    return A
end  

function dimension(S)
    A = gauss(hcat(S...))
    dim = 0

    for row in eachrow(A)
        # Aumentar el umbral puede ayudar a evitar problemas numéricos
        if any(x -> abs(x) > 1e-5, row)  
            dim += 1
        end
    end

    return dim
end
