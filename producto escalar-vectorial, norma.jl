using LinearAlgebra

"""
Formas Bilineales: 

f(u,v) = u[1]*v[1] + u[2]*v[2] + u[3]*v[3]

g(x1,x2,x3,y1,y2,y3) = x1*y1 + x2*y2 + x3*y3

h(u,v) = transpose(u) * A * v

p(x1,x2,x3,y1,y2,y3) = [x1,x2,x3] * A * [y1,y2,y3]

"""
# Definicion de los vectores u y v
u = [1,2,3]
v = [4,5,6]

dot(u,v) # producto escalar usual

norm(u) # norma usual

cross(u,v) # producto vectorial