prod <- read.csv("produccion.csv",header=T)
View(prod)
prod$Tiempo <- as.factor(prod$Tiempo)

boxplot(prod$Kgsem~prod$Tiempo)
tapply(prod$Kgsem,prod$Tiempo,mean)

10.1066-10.8954 




#H0 La media de la produccion de semillas de la temporada 2013 es mayor que 
#la media de la temporada 2012

t.test(prod$Kgsem~prod$Tiempo,alternative="greater", var.equal=T)


#Doctor
#H0 MEDIA IGUAL A 0
#H1 MEDIAS DIFERENTES
#metodo alternativo two.sided


t.test(prod$Kgsem~prod$Tiempo,var.equal=T,alternative="Two.sided",paired=T)

T2012 <- subset(prod$Kgsem, prod$Tiempo == "T2012")
T2013 <- subset(prod$Kgsem, prod$Tiempo == "T2013")


t.test(T2012, T2013, alternative = "two.sided", var.equal = TRUE, paired = TRUE)



