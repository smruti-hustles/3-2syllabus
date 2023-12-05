multiply<-function(a,b=NULL)
{
  if(is.null(b)){
    b<-1
  }
  z=a*b
  return(z)
}
print(multiply(2))
print(multiply(3,4))



fact<-function(n)
{
  if(n==1)
    return(1)
  else
    n*fact(n-1)
}
fact(5)
}


tempFn<-function(xVec){
  yVec<-numeric(length(xVec))
  for(i in seq_along(xVec)){
    x=xVec[i]
    if(xVec[i]<0){
      yVec[i]<-x^2+2*x+3}
    
    else if(xVec[i]<2){
      yVec[i]<-x+3}
    else{
      yVec[i]<-x^2+4*x-7}
  }
  yVec
}

xVec<-seq(-3,3,length=100)
yVec<-tempFn(xVec)
yVec


odds<-function(m){
  mx<-m
  mx
  mx[mx %% 2 != 0] <- 2 * mx[mx %% 2 != 0]
  
  return(mx)
}
m=matrix(1:9,nrow=3)
print(odds(m))



amat<-matrix(sample(10,size=60,replace=T),nrow=6)
amat
apply(amat,1,a<-function(x){
  sum(x>4)
})

which(apply(amat,1,function(x){
  sum(x==8)==2
}))

l<-list(a=matrix(1:4,nrow=2),b=matrix(1:6,nrow=3))
l
lapply(l,function(x){
  x[,1]
})

lapply(mtcars,FUN =min)->l
sapply(mtcars,FUN=min)->s
mapply(mtcars,FUN=min)->m
l
s
m
listobjects=list(l,s,m)
listobjects
sapply(FUN=class,listobjects)


mapply(rep,c('A','F'),10:1)
mapply(rep,c('A','F'),1:10,use.names=F)

Titanic
apply(Titanic,2,sum)
apply(Titanic,c(3,2),sum)

