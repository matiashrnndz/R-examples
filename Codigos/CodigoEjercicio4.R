x <- seq(-7, 7, by = .1)

fx1 <- dnorm(x, mean = -2, sd = 1)
fx2 <- dnorm(x, mean = 0, sd = 1)
fx3 <- dnorm(x, mean = 2, sd = 1)

par(mfrow = c(2, 2))

plot(x,fx1)
plot(x,fx2)
plot(x,fx3)
