#Crear una función que me diga si los vectores de S son l.i., con el nombre de la funcion de abajo, tiene que devolver true si los vectores son l.i. y false si no lo son
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



# problema, en la funcion puede dividirse entre 0.   Solucion:

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



A=[1 2 3;3 5 1;1 1 2]
n=length(A[:,1])
       function gauss(A)
           for j in 1:(length(A[:,1])-1)
               for i in j+1:length(A[:,1])
                if A[j,j]==0 
                    k=j
                    while (A[k,j]==0) and(k<n)
                        k=k+1
                    end
                    u=A[j,:]
                    v=A[k,:]
                    A[j,:]=v
                    A[k,:]=u
                    
                    A[i,:]=A[i,:]-(A[i,j]/A[j,j])*A[j,:]
                       end
                end
            end
           return A
    end




#Crear una función que me diga si los vectores de S son l.i., con el nombre de la funcion de abajo, tiene que devolver true si los vectores son l.i. y false si no lo son
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


using LinearAlgebra

function imagen(f)
    # Generar una matriz aleatoria 4x4
    A = rand(4, 4)
    
    # Aplicar la aplicación lineal a la matriz A
    img_A = f(A)
    
    # Obtener la factorización QR de la matriz resultante
    Q, R = qr(img_A)
    
    # Obtener las columnas linealmente independientes de Q
    base_imagen = Q[:, 1:rank(Q)]
    
    return base_imagen
end

# Ejemplo de uso con una aplicación lineal específica
f(v) = [2*v[1]+v[2]; 3*v[2]-v[3]] # Puedes cambiar esto por tu propia función lineal
base_imagen_resultante = imagen(f)

println("Base de la imagen de f:", base_imagen_resultante)


