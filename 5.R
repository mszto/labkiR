#zad 1

klienci<-read.csv("klienci.csv",header = TRUE,sep=";",dec=".")
klienci$wiek=cut(klienci$wiek,labels = c('(18,30]','(30,40]','(40,50]','(50,60]','(60,70]','(70,80]','(80,90]','(90,100]'),breaks =8 )
(summary(klienci$wiek))
(klienci$wiek)
(klienci$plec)
tabela=table(klienci$wiek,klienci$plec)
(tabela)
margin.table(tabela,1)
margin.table(tabela,2)


#zad 2
for(i in 1:dni[j])
miesiace=c(month.abb)
dni=c(31,29,31,30,31,30,31,31,30,31,30,31)

z<-strptime("1/1/12","%d/%m/%y")
miesiace=c()
j=1
k=1
for(i in 1:dni[j]){
  miesiace[i]='sty'
  k=k+1
}
j=2
for(i in 1:dni[j]){
  miesiace[k]='lut'
  k=k+1
}
j=3
for(i in 1:dni[j]){
  miesiace[k]='marz'
  k=k+1
}

j=4

for(i in 1:dni[j]){
  miesiace[k]='kwie'
  k=k+1
}
j=5

for(i in 1:dni[j]){
  miesiace[k]='maj'
  k=k+1
}
j=5

for(i in 1:dni[j]){
  miesiace[k]='cze'
  k=k+1
}
j=5

for(i in 1:dni[j]){
  miesiace[k]='lip'
  k=k+1
}
j=8


for(i in 1:dni[j]){
  miesiace[k]='sie'
  k=k+1
}
j=9

for(i in 1:dni[j]){
  miesiace[k]='wrze'
  k=k+1
}
j=10


for(i in 1:dni[j]){
  miesiace[k]='paz'
  k=k+1
}
j=11

for(i in 1:dni[j]){
  miesiace[k]='lis'
  k=k+1
}
j=12


for(i in 1:dni[j]){
  miesiace[k]='gru'
  k=k+1
}


dni2=c()
for(i in 1:367){
  dni2[i]=1
}




#zad3

litery=c()
for(i in 1:20){
  d=sample(0:1,1,T)
  if(d){
    litery[i]=sample(LETTERS,1,F)
  }
  else{
    litery[i]=sample(letters,1,F)
  }
}



litery2=sapply(litery,toupper)
op=c()
b=1
for (i in litery2){
  op[b]=i
  b=b+1
}
zmiany<-function(x,y){
  
  if(x!=y){
    return (1)
  }
  else{
    return(0)
  }
}

d=function(x,y){
  y=5
  if(x==1){
    return (1)
  }
  else{
    return(0)
  }
}

(sapply(litery,d))
dom=c()

for(i in 1:20){
  dom[i]=zmiany(litery[i],litery2[i])
}
sa
litery3=sapply(litery, function(x) for(i in 1:20){if(x!=litery2[i])return(1)else return(0)})


(sum(litery3))
(litery)
(litery2)
mode(litery)
mode(litery3)
(litery3=as.vector(litery3,mode="logical"))
mode(litery3)


#praca domowa



studenci=read.csv("studenci.csv",header = TRUE,sep=";",dec=".")
(studenci)
licz=cut(studenci$gr_nr,labels = c('(1:1]','(2:2]'),breaks = 2)
(summary(licz))
table(studenci$imie)
table(studenci$gr_nr)
table(studenci$plec)
tab=table(studenci$gr_nr,studenci$plec)
(tab)

character
j=1
imiona=studenci$imie
(imiona=as.vector(imiona,mode="character"))
liczebnosc=c()
for(i in 1:49){
liczebnosc[j]=length(imiona[i])
j=j+1
}
pierwsze=c()
for (i in 1:49){
  d=imiona[i]
  pierwsze[i]=d[1]
}
(gha=table(studenci$imie,liczebnosc))