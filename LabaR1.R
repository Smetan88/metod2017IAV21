#Створюємо талицю 10 рядків 5 стовпчиків
mat <- matrix(rnorm(50), nrow = 10, ncol = 5)
mat

b<-0
#максимальне значення в кожному стовпці
for(a in 1:5){
  b<-max(mat[,a])
  print(b)
}
#середнє (mean) значення кожного стовпця
for(a in 1:5){
  b<-mean(mat[,a])
  print(b)
}
#мінімальне значення в кожному рядку
for(a in 1:10){
  b<-min(mat[a,])
  print(b)
}
#кількість значень < 0 для кожного стовпця. Використати свою функцію.
f<-function(x,y){
  i<-0
  for(a in 1:10){
  if(x[a,y]<0)i<-i+1
  }
  return(i)
}
for(a in 1:5){
b<-f(mat,a)
print(b)
}
#Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в стовпці є елементи >2, FALSE – якщо немає.
f1<-function(x,y){
  i<-0
  for(a in 1:10){
    if(x[a,y]>2)i=TRUE
    
  }
  if(i==0)i=FALSE
  return(i)
}
  
for(a in 1:5){
  b<-f1(mat,a)
  print(b)
}  