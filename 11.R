#zad 1

(w1=polynom::as.polynomial(c(-64,-12,48,1)))
w2=polynom::polynomial(c(16,-8,1))
w3=polynom::polynomial(c(-48,0,3))
(w3)

(NWD1=polynom::GCD(w1,w2))
(NWD2=polynom::GCD(w1,w3))
(NWD3=polynom::GCD(w3,w2))


#zad 2
w1z2=polynom::as.polynomial(c(27,27,9,1))
w2z2=polynom::as.polynomial(c(9,6,1))
w3z2=-polynom::as.polynomial(c(-9,0,1))
w4z2=polynom::as.polynomial(c(-81,0,0,0,1))
(NWW1=polynom::LCM(w1z2,w2z2))
(NWW2=polynom::LCM(w1z2,w3z2))
(NWW3=polynom::LCM(w1z2,w4z2))
(NWW4=polynom::LCM(w2z2,w3z2))
(NWW5=polynom::LCM(w2z2,w4z2))
(NWW6=polynom::LCM(w3z2,w4z2))

#zad 3

g=polynom::polynomial(c(16,-17,0,1))
d=polynom::polynomial(c(4,-5,1))
w=g/d
(calka=integral(w,c(0,1.5)))
(pochodna=deriv(w))

#zad 4
A=c()
j=1
for(i in -4:10){
  if(i %% 2==0 && i%%3==0){
    A[j]=i
    j=j+1
  }
}
B=c()
j=1
for(i in 0:20){
  if(i%%3==0){
    B[j]=i
    j=j+1
  }
}
(C=setdiff(A,B))

#zad 5
f <- function(x) {(x-5)^2-x}
f2 <- function(x) {(x-5)^3-x}
f3 <- function(x) {(x-5)^4-x}
f4 <- function(x) {(x-5)^5-x}

curve(f,-5,15, lwd=3, lty=1, main="wykres f1")
(min1=optimize(f,interval = c(-5,15)))
curve(f2,-5,15, lwd=3, lty=1, main="wykres f2")
(min2=optimize(f2,interval = c(-5,15)))
curve(f3,-5,15, lwd=3, lty=1, main="wykres f3")
(min3=optimize(f3,interval = c(-5,15)))
curve(f4,-5,15, lwd=3, lty=1, main="wykres f4")
(min4=optimize(f4,interval = c(-5,15)))

#zad 6


(calkazad6=integrate(function(x) 1/x^2+2*x+2,-Inf,Inf))
(calka2zad6=integrate(function(x) x*2.718281828459^(-x^2),0,Inf) )
(calka3zad6=integrate(function(x) 1/sqrt(4-9*x^4),0,sqrt(2/3)))

#zad 7

(pf1=deriv(~(5*x^2+x-2)/(x^2+7),"x"))
(pf2=deriv(~5*x^15-x^2+1/3*x-2,"x"))


#zadanie domowe
zad1_wielomian=polynomial(c(3,-1,-3,1))
miejsce_zerowe_zad_dom=solve(zad1_wielomian)
(NWD_ZAD_DOM=GCD(zad1_wielomian,polynomial(c(12,-1,-12,1))))

zad_domfunkcja<-function(x){-x^2+3*x-4}
curve(zad_domfunkcja,-10,10,lwd=3,lty=1)
optimize(zad_domfunkcja, interval=c(-10,10))
optimize(zad_domfunkcja, interval=c(-10,10), maximum=T)


(pf_dom=deriv(~1/(2*x+1),"x"))
x=1
(eval(pf_dom))


(calka_dom=integrate(function(x) arctan(x)^2/(1+x^2),-Inf,Inf))
