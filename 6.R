funkcja_zad1=function(wektor,x){

  return(sum(wektor)*x)
}
  




wekt2=c(1,2,3,4,NULL,NULL,15)
wekt=sample(-50:50,10,F)
sum=funkcja_zad1(wekt,14)
cat(sum)
cat(funkcja_zad1(wekt2,3))



#zad 2

lista_sum=function(lista,lista2){
  liasta3=list()
  for(i in 1:length(lista)){
    for (j in 1:length(lista[[i]])){
      lista3[[i]][j]=lista[[i]][j]+lista2[[i]][j]
    }
  }
  return(lista3)
}

lista=list(sample(0:1,1,T),sample(0:1,2,T),sample(0:1,3,T),sample(0:1,4,T),sample(0:1,5,T))
lista2=list(sample(0:1,1,T),sample(0:1,2,T),sample(0:1,3,T),sample(0:1,4,T),sample(0:1,5,T))
lista3=list(c(),c(),c(),c(),c())


liasta3=list()
for(i in 1:length(lista)){
  for (j in 1:length(lista[[i]])){
    lista3[[i]][j]=lista[[i]][j]+lista2[[i]][j]
  }
}


(lista3=lista_sum(lista,lista2))



#zad 3

funcka3=function(x){
  wiersze=apply(x,2,min)
  
  for(i in 1:4){

    for(j in 1:7){
      if(wiersze[i]==x[j,i]){
        wiersze[i]=j
      }
    }
  }
  return (wiersze)
}

kolumna1=c()
j=1
d=1
for(i in 1:20){
  if(i==j){
    kolumna1[d]=i
    j=j+3
    d=d+1
  }
}
d=1
kolumna2=c()
for(i in length(kolumna1):1){
  kolumna2[d]=kolumna1[i]
  d=d+1
}

d=10
j=1
kolumna3=c()
while(j<8){
  if(d%%2==0){
  kolumna3[j]=d
  j=j+1
  }
  d=d+1
}

kolumna4=c(1:4,(kolumna1[3]-kolumna1[2]-kolumna1[1])*2,(kolumna1[3]-kolumna1[2]-kolumna1[1])*8,(kolumna1[1]-kolumna1[2]-kolumna1[3])*8)

macierz=matrix(0,7,4)
macierz[,1]<-kolumna1
macierz[,2]<-kolumna2
macierz[,3]<-kolumna3
macierz[,4]<-kolumna4


w=funcka3(macierz)
(w)

#zad_dom

gr=c(1:8)

poteg=function(wekto,y){
  
  for(i in 1:length(wekto)){
    wekto[i]=wekto[i]^y
  }
  return(wekto)
}


(poteg(wektor,3))





najm_najwie=function(w){
  if(length(w)<3){
    return ("argument jest za krótki")
  }
  sort(w)
  t=c()
  t[1]=w[1]
  t[2]=w[2]
  t[3]=w[3]
  t[4]=w[length(w)]
  t[5]=w[length(w)-1]
  t[6]=w[length(w)-2]
 
  return(t) 
}
  
  (najm_najwie(gr))



najm_najwie2=function(w,naj){
  if(length(w)<naj || naj>length(w)){
    return ("argument jest za krótki")
  }
  sort(w)
  t=c()
  
  for(i in 1:naj){
    t[i]=w[i]
  }
  
  for(i in 1:naj){
    t[naj+i]=w[length(w)-i+1]
  }
  
  return(t) 
}

(najm_najwie2(gr,4))


czy_palindrom=function(w){
  
  
  for(i in length(w)%/%2){
    if(w[i]!=w[length(w-i+1)]){
      return ("wektor nie jest palindromem")
    }
  }
  return ("wektor jest palindromem")
  
}

funkcja_wektor=function(){
  w=c()
  for(i in 1:20){
    w[i]=i
  }
  h=length(w)
  for(i in h:(h+10)){
    w[i]=0
  }

  j=1
  d=2
  while(j<=20){
    if(d%%2==0){
      w[length(w)+1]=d
      j=j+1
    }
    d=d+1
  }
  for(i in 7:16){
    w[length(w)+1]=i
  }
  b=length(w)
  for(i in 1:b){
    w[b+i]=w[b-i+1]
  }
  return (w)
}

(funkcja_wektor())
(czy_palindrom(funkcja_wektor()))