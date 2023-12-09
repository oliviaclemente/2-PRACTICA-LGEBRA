using LinearAlgebra 

A = [1 2 3; 4 5 6; 7 8 9]  # definir matriz A de 3x3

nullspace_A = nullspace(A) # núcleo de la matriz A



# el espacio nulo de una matriz es el conjunto de todos los vectores que, 
# cuando se multiplican por la matriz, dan un vector cero. 
# Matemáticamente, si A es una matriz, entonces el espacio nulo de A 
# se define como el conjunto de todos los vectores v tal que Av=0. 

# En este caso, nullspace_A contendrá una base para el espacio nulo 
# de la matriz A.
