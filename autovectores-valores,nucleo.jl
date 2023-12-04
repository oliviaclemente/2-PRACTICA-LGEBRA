using LinearAlgebra 


A = [1 2 3; 4 5 6; 7 8 9]  # definir matriz A de 3x3

nullspace_A = nullspace(A) # núcleo de la matriz A

E = eigen(A) # calcula los autovalores y autovectores de A

# Imprime los autovalores de A
println("Autovalores de A: ", E.values)
E.values

# Imprime los autovectores de A
println("Autovectores de A: ", E.vectors)
E.vectors