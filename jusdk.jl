using LinearAlgebra

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
 function are_li(S)
    A=transpose(hcat(S...))
    A=gauss(A)
    n=length(A[:,1])
    m=length(A[1,:])
    z=zeros(m)
    return A[n,:]!=z
end
function find_basis(S)
    B=[]
    A=[]
    n=length(S)
    for i in 1:n
        A=append!(A,[S[i]])
        if are_li(A)
            B=append!(B,[S[i]])
        end
        A=[]
        for v in B
            A=append!(A,[v])
        end 
    end
    return B
end



function base_imagen(f)
    S=[f([1,0,0,0]), f([0,1,0,0]),f([0,0,1,0]),f([0,0,0,1])] #Defino el sdg
    return find_basis(S)
end

function base_de_imagen_rn(f,n) #Para Rn.
    S=[]
    for i in 1:n
        v=zeros(n)
        v[i]=1
        S=append!(S,[f(v)])
    end
    return find_basis(S)
end