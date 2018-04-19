#zad 1
terrain.colors(3)
heat.colors(8)
topo.colors(4)
cm.colors(2)
grey(1)

#zad 2
#a)

n <- 100
pie(rep(1,n),col=rainbow(n),lty=0,labels="",cex=0.1 )
#b
n <- 24
pie(rep(1,n),col=rainbow(n),cex=0.5)

#c)

n <- 24
pie(rep(1,n),col=rainbow(n),cex=0.5, init.angle = -90)

#d)
n <- 6
t=c('czerwony','zolty','zielony','seledynowy','niebieski','rózowy')
pie(rep(1,n),col=rainbow(n),cex=0.5,labels = t)

#e)
install.packages("plotrix")
library(plotrix)
n <- 12
pie3D(rep(1,n),col=rainbow(n),labels = "")

#zad 3
tabela=matrix(c(1:21),c(10:30))
plot(tabela, type="p", main="Wykres punktowy")
plot(tabela, type="l", main="Wykres liniowy")
plot(tabela, type="b", main="Wykres liniowy")
plot(tabela, type="c", main="wykres kreskowy")
plot(tabela, type="o", main="Wykres kreskowo-punktowy")
plot(tabela, type="h", main="Wykres slupkowy")
plot(tabela, type="s", main="Wykres schodkowy")
plot(tabela, type="S", main="Wykres ??")
plot(tabela, type="n", main="Wykres ")


#zad 4
x2=function(x){
  return (x*x)
}
xx2=function(x){
  return (-(x*x))
}
x0=function(x){
  return (0*x)
}
x3=function(x){
  return((x-3)^2+2)
}
x4=function(x){
  return((x-3)^2-4)
}
x=data.frame("x"=c(-5.5:5.5),"x^2"=c(-5.5:5.5)) 
plot(x$x,x$x.2,type = "n")
plot(x2,-3,3,col="red",add=T)
plot(xx2,-3,3,col="green",add=T)
plot(x3,-4,10,col="blue",add=T)
plot(x4,-0,5,add=T)
abline(h=0,lty=2)
abline(v=0,lty=2)
legend(-5,3,c("x^2","-x^2","(x-3)^2)","(x-3)^2-4"),col=c("red","green","blue","black"),
       cex=0.7,lty=c(1,1,1,1))

#zad 6

data(trees)
attach(trees)
#a)
# par(mfrow=c(5,5))
barplot(Volume, main="Wykres słupkowy dla zmiennej 'Volume'", horiz=T,
        col="blue")
#b)
hist(Height, 6,prob=T, main="Histogram i funkcja gęstości",
     xlab="Wysokość",ylab="Prawdopodobieństwo",col="red")
lines(density(Height))
#c)
boxplot(Girth, Height, Volume, border="darkred", horizontal=T, names=c("Girth",
                                                                       "Height", "Volume"), col=c("bisque", "peachpuff3", "peru"))
#d)
library(gplots)
boxplot.n(Girth, Height, Volume, border="blue1", names=c("Girth", "Height",
                                                         "Volume"), col=c("gray3", "gray33", "gray63"), main="Trees", top=TRUE,
          shrink=0.8 )
#e)
model=lm(Volume~Height)
summary(model)
plot(Height,Volume)
abline(model, col="red")
legend(65,60, c("(Height,Volume)"), pch=21)
legend(65,70, c("Volume=-87.1236+1.5433Height"), lty=1, col="red")
#f)
model=lm(Volume~Girth+Height)
summary(model)
qqnorm(model$residuals)
#g)
plot(model)
#h)
par(mfrow=c(1,2))
plot(Girth, Height, col="green3")
plot(Girth, Height, type="n")
points(Girth, Height, pch=21, bg="gray50", col="blue", cex=1.5)
abline(h=seq(65,85,by=5), v=seq(8,20, by=2), lty=3)
#i)
pairs(trees, labels=c("Obwód", "Wysokość", "Objętość"), col="blue",
      cex.labels=1.5, pch=4)