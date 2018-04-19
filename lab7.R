
#zad1
setwd('C:\\Users\\dkoby\\Desktop')
dir.create("Laboratorium")
setwd('C:\\Users\\dkoby\\Desktop\\Laboratorium')
file.create("dane.csv")
file.create("dane.txt")

#zad2
 
dane_t<-read.table('dane.txt',sep='\t',header=TRUE)
dane_c<-read.table('dane.csv',sep=';',header=TRUE)

#zad3  i 4
(og<-read.csv('zycie.csv', sep=';',header=TRUE, dec='.'))
(ogolem<-data.frame(wojewodztwa=og$Wojew.dztwa[1:17],mezczyzni=og$M.ýczy.ni[1:17],kobiety=og$Kobiety[1:17]))
(miasto<-data.frame(wojewodztwa=og$Wojew.dztwa[18:34],mezczyzni=og$M.ýczy.ni[18:34],kobiety=og$Kobiety[18:34]))
(wies<-data.frame(wojewodztwa=og$Wojew.dztwa[35:51],mezczyzni=og$M.ýczy.ni[35:51],kobiety=og$Kobiety[35:51]))

write.table(ogolem,file='zycie_ogolem.txt',sep='\t')
write.table(miasto,file='zycie_miasto.txt',sep='\t')
write.table(wies,file='zycie_wies.txt',sep='\t')


#praca_dom_1

e<-read.table('kurs.csv',sep=';',header=TRUE)
kol=c(1,3:5,9:12,14:16,36:50)
kurs=data.frame(e[1])

j=1
for(i in kol){
  kurs[j]=e[i]
  j=j+1
}
(kurs)


#praca_dom_2


e<-read.table('mieszkania.csv',sep=';',header=TRUE)

j=2
mieszkania=data.frame(e[1])

for(i in 7:13){
  mieszkania[j]=e[i]
  j=j+1
}
write.table(mieszkania,file='mieszkania_2010.txt',sep='\t')
