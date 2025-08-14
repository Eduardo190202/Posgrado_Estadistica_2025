300+240+1527+400+1500+1833
celular <- 300
celular
transporte <- 240
comestible <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
5800*5*2

abs(10)
abs(-4)
sqrt(9)
log(2)

#Este es um comentario

2+9
4+5 #tambien se pueden colocar comentarios

Celular <- -300
CELULAR <- 8000

celular+Celular
CELULAR-celular

help(abs)
help(mean)
prueba <- abs(10)
?mean
help.search("absolute")
??absolute

gastos <- c(celular=300,transporte=240,comestible=1527,gimnasio=400,alquiler=1500,otros=1833)

gastos

barplot(gastos)

sort(gastos)

barplot(sort(gastos))

gastos ordenado <-sort(gastos)

?sort
sort(gastos, decreasing = TRUE)
gastos_ordenados <- sort(gastos, decreasing = TRUE)
barplot(gastos_ordenados)

?barplot
barplot(gastos_ordenados, xlab = TRUE, ylab = TRUE)

barplot(gastos_ordenados, names.arg = gastos_ordenados)

names(gastos_ordenados) <- c("otros","comestibles","alquiler","gimnasio","celular","transporte")
barplot(gastos_ordenados,main="Gastos mensuales",names.arg=names(gastos_ordenados),col="skyblue")

