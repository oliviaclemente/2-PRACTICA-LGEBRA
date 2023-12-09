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



# Definir una transformación lineal. Por ejemplo, f(x) = Ax, donde A es una matriz.
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]  # Ejemplo de matriz de transformación

# Cada fila de A es una progresión aritmética, por 
# lo que las filas (y las columnas) no son linealmente 
# independientes. De hecho, las últimas dos columnas 
# son combinaciones lineales de las primeras dos. 
# Por lo tanto, la imagen de A es un subespacio de 
# dimensión 2 de R^4, y los dos vectores en el 
# resultado forman una base para este subespacio.



# Función que aplica la transformación lineal
function f(x)
    return A * x
end

# Encontrar la base de la imagen de f en R^n
n = 4  # Para R^4 en este caso
base = base_de_imagen_rn(f, n)

println(base)


# EL RESULTADO:

# Es una lista de vectores que representan una base 
# de la imagen de la transformación lineal definida 
# por la matriz A. En este caso, parece que solo dos 
# vectores fueron necesarios para formar la base, 
# lo cual sugiere que los otros dos vectores de la 
# base estándar eran combinaciones lineales de estos 
# dos y, por lo tanto, no eran necesarios para formar 
# la base.