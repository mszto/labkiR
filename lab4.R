wektor=c();
j=1;
w=c()
for (i in 4:40){
  if(i%%2==0){
    wektor[j]=i
    j=j+1
  }
}

while(j>0){
  cat(wektor[j])
  cat (" ")
  j=j-1
}


macierz=matrix(1:10, 10,3)


  for(j in 1:10){
    macierz[j,2]=macierz[j,1]^2
    macierz[j,3]=macierz[j,1]^3
  }
for (i in 1:10){
  for (j  in 1:3){
    sprintf("%s",macierz[i,j])
  }
}



j=0

for(i in 1:13){
  if(i%%2==1){
    w[j]=i
    j=j+1
  }
}

pow =function(x){
  s=1
  for (i in 1:x){
    s=s*i
  }
  result=s
}

silnia=data.frame(silnia=c(1,2,3,4,5,7))
j=1
for (i in w){
  silnia$silnia[j]=pow(i)
  j=j+1
}
cat(silnia$silnia)



w3=c()

for(i in 1:100){
  w3[i]=i^2
}

w4=c()
for( i in 1:100){
  w4[i]=w3[i]%%10
}
fakt=factor(w4)
summary(fakt)





