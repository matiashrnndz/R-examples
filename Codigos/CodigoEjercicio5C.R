dataLength <- 1000
A <- vector(mode = "list", length = dataLength)
B <- vector(mode = "list", length = dataLength)

for (i in 1:dataLength)
{
  n = 5
  
  muestra <- rnorm(n, mean = 5, sd = 1)
  
  EstProm <- sum(muestra)/n
  A[i] <- EstProm
  
  
  mses <- sapply(muestra, function(x) (x - EstProm)^2)
  EstCuaVar <- (1/(n-1))*sum(mses)
  B[i] <- EstCuaVar
}

A <- gsub(",", "", A)
A <- as.numeric(A)
hist(A, freq = FALSE)
summary(A)
curve(dnorm(x, mean(A), sd(A)), add=T)

B <- gsub(",", "", B)
B <- as.numeric(B)
hist(B, freq = FALSE)
summary(B)
curve(dnorm(x, mean(B), sd(B)), add=T)

shapiro.test(A)
shapiro.test(B)
