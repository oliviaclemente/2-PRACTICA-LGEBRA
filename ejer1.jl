function gauss(A)
    n=length(A[:,1])
    for j in 1:(length(A[:,1])-1)
      for i in j+1: length(A[:,1])
        if A[j,j]==0
            k=j
            while (A[k,j]==0) & (k<n)
                k=k+1
            end
            u=A[j,:]
            v=A[k,:]
            A[j,:]=v
            A[k,:]=u
        end
      A[i,:]=A[i,:]-(A[i,j]/A[j,j])*A[j,:]
      end
    end
    return (A)
end

gauss(D)


