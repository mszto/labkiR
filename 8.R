napis=paste(1:20, LETTERS[1:4],sep='.',collapse=', ');

w1=(1:12);
w1[11]=NA 
obiekt=data.frame(liczba=c(w1), kwadrat=c(w1^2))
class(obiekt)
mode(obiekt)
typeof(obiekt)
is.na(obiekt)
fix(obiekt)
attr(obiekt,'names')=c('x','x^2')
w3=obiekt$x^3
pom=data.frame('x^3'=c(w3))
ramka2=data.frame('x'=c(obiekt$x),'x^2'=c(obiekt$`x^2`),'x^3'=c(w3))
obiekt=as.matrix(obiekt)