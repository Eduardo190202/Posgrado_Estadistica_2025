#script 4
#28/8/2025
#Eduardo Francisco Hinojosa Silva 


# importar ----------------------------------------------------------------

calidad <- read.csv("calidadplantula.csv",header=T)
calidad$Tratamiento <- as.factor(calidad$Tratamiento)
class(calidad$Tratamiento)
summary(calidad)

mean(calidad$IE)


tapply(calidad$IE,calidad$Tratamiento,mean)
tapply(calidad$IE,calidad$Tratamiento,sd)
tapply(calidad$IE,calidad$Tratamiento,var)

colores <- c("navajowhite","skyblue" )

boxplot(calidad$IE,calidad$Tratamiento)
boxplot(calidad$IE~calidad$Tratamiento)

boxplot(calidad$IE~calidad$Tratamiento ,col = c("navajowhite","skyblue" ), main= "Calidad de plantulas",
        xlab = "Calidad", 
        ylab= "Tratamiento")

