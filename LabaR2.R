list1 <-  list(observationA = c(1:5, 7:3))
               
observationB <- matrix(1:6, nrow=2)       

> list1

$observationA
 [1] 1 2 3 4 5 7 6 5 4 3

$observationB
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

> lapply($observationA, sum)  

[1] 40

> lapply($observationB, sum)
[1] 21     


>lapply(list1, max)

>lapply(list1, min)

>sapply(list1, max)

>sapply(list1, min)