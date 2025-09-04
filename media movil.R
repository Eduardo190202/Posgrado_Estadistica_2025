#media movil para determinar el ideal con respecto a la poblacion 

data(iris)
View(iris)
iris

setosa <- subset(iris,Species=="setosa")
View(setosa)

#sumatoria acumulada de la variable lomgitud
acum <- cumsum(setosa$Sepal.Length)
acum #sumatoria acumulada
cont <- seq(1:length(setosa$Sepal.Length))
cont

#crear data frame con los datos creados
set_mov <- data.frame(cont,acum)
View(set_mov)

set_mov$movil <- round(acum/cont,2)

plot(set_mov$cont, set_mov$movil, type = "l",
     xlab = "Número de observaciones", ylab = "Media móvil")


abline(h=mean(setosa$Sepal.Length),col="red")
mean(setosa$Sepal.Length)


#setosa

setosa <- subset(iris,Species=="setosa")
mean(setosa$Sepal.Width)

#mu=3.9

#H0 LA DIFERENCIA ENTRE LAS MEDIAS ES 0 O MENOR A 0 IGUAL A 3.9
#H1 LA DIFERENCIA ENTRE LA MEDIA TORETICA Y EXPERIMENTAL ES DIFERENTE A 0 = 3.9

t.test(setosa$Sepal.Width,mu=3.9)
