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



# SACAR LA BASE DE LA IMAGEN DE UNA APLICACIÓN LINEAL

# Ejemplo de uso con una aplicación lineal específica
f(v) = [2*v[1]+v[2]; 3*v[2]-v[3]] # Puedes cambiar esto por tu propia función lineal
base_imagen_resultante = imagen(f)

println("Base de la imagen de f:", base_imagen_resultante)


