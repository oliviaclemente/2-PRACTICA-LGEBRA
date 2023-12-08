using LinearAlgebra
function gauss(A)
    A=1.0*A
    n=length(A[:,1])
    m=length(A[1,:])
    l=1
    i=2
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
    if A[n,:]==zeros()
        print("False")
    else A[n,:]!=zeros()
        print("True")
    end
end
