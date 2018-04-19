zad1A=matrix(c(1,4,7,2,5,8,3,6,9),3,3);
zad1B=matrix(c(1,1,1,3,3,3,5,5,5),3,3);


zad2A=matrix(c(1,2,3,4,5,6),2,3);
zad2B=matrix(c(1,2,1,2,1,2),2,3);
zad2C=matrix(c(4,3,-1,-2,7,1),2,3);

zad2wynikA=(zad2A*3+zad2B)%*%t((zad2C-zad2B*2));
zad2wynikB=(zad2A+zad2B)^2;
zad2wynikC=det(t(zad2A)%*%(zad2A));

zad3A=matrix(c(3,5,-2,-4),2,2);
zad3B=matrix(c(-1,-5,2,6),2,2);

zad3X=zad3B/zad3A;

a=c(1,2,3,4,5,6,7);
b=c(-5,-4,-3,-2,-1,0,1,2,3,4,5,6);
c=c(0,1,0,1,0,1,0,1);
d=c(-1,0,1,2,-1,0,1,2);
e=c(5,5,5,6,6,6,7,7,7);

wynikZad3=data.frame(wektor=c('a','b','c','d','e'), 
œrednia=c(mean(a),mean(b),mean(c),mean(d),mean(e)), najwiekszy=c(max(a),max(b),max(c),max(d),max(e)),
najmnieszy=c(min(a),min(b),min(c),min(d),min(e)));





samochody=data.frame(marka=c("Honda","Honda","Mazda","opel"),
rocznik=c(2003,2005,2007,2001),uszkodzony=c(TRUE,FALSE,FALSE,TRUE),
kolor=c("czerwony","srebrny","zielony","niebieski"));
