# Ejercicio 1) Parte 1) A)

prob <- dpois(x = 36, lambda = 30) +
        dpois(x = 8, lambda = 10) +
        dpois(x = 9, lambda = 10) +
        dpois(x = 10, lambda = 10) +
        dpois(x = 11, lambda = 10)

print(prob)
