using LinearAlgebra 

A = [1 2 3; 4 5 6; 7 8 9]  # definir matriz A de 3x3

E = eigen(A) # calcula los autovalores y autovectores de A

# Imprime los autovectores de A
println("Autovectores de A: ", E.vectors)
E.vectors