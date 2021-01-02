A<-matrix(0,1000,5)
B<-matrix(0,1000,1)
for(i in 1:1000) for(j in 1:5) {A[i,j]=rnorm(1,mean=5,sd=1)}
for(i in 1:1000) {B[i]=4*sd(A[i,])^2}
hist(B,freq=FALSE)

curve(dchisq(x,3),0.20,add=T)
