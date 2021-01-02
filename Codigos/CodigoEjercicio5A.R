# Se obtienen 5 V.A. Ind. Normales con media 5 y desvío estándar 1
muestra <- rnorm(5, mean = 5, sd = 1)
print(muestra)

EstProm <- sum(muestra)/5
print(EstProm)

n = 5
mses <- sapply(muestra, function(x) (x - EstProm)^2)
EstCuaVar <- (1/(n-1))*sum(mses)
print(EstCuaVar)
