function markov(A, v, k)
    # Convertimos las matrices a matrices de Julia
    A = Array(A)
    v = Array(v)
  
    # Inicializamos el vector x con el vector de probabilidad v
    x = v
  
    # Iteramos sobre los pasos k
    for i in 1:k
      # Multiplicamos el vector x por la matriz A
      x = A * x
    end
  
    # Devolvemos el vector x
    return x
  end
  

  A = [0.5 0.3; 0.5 0.7]  # Reemplaza esto con tu propia matriz estocástica
  v = [1.0; 0.0] 
  k = 10
  
  x = markov(A, v, k)
  
  println(x)
  