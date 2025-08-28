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

boxplot(calidad$IE~calidad$Tratamiento ,col = c("navajowhite","skyblue" ), main= "Vivero Forestal",
        xlab = "Indice de Calidad", 
        ylab= "Tratamiento",
        ylime=c(0.4,1.2))
#aplicar un sibconjunto para cada tratamiento

def_ctrl <- subset(calidad$IE,calidad$Tratamiento=="Ctrl")

def_ctrl <- subset(calidad,Tratamiento=="Ctrl")
def_Fert <- subset(calidad,Tratamiento!="Ctrl")

par(mfrow=c(1,2))
qqnorm(def_ctrl$IE);qqline(def_ctrl$IE)
qqnorm(def_Fert$IE);qqline(def_Fert$IE)
par(mfrow=c(1,1))


#normalidad de los datos
shapiro.test(def_ctrl$IE)

shapiro.test(def_Fert$IE)

var.test(calidad$IE~calidad$Tratamiento)

t.test(calidad$IE~calidad$Tratamiento,alternative="two.sided",var.equal=T)

t.test(calidad$IE~calidad$Tratamiento,alternative="two.sided",var.equal=F)

t.test(calidad$IE~calidad$Tratamiento,alternative="greater",var.equal=T) #equivocado en este caso

cohens_efecto <- function(x, y) {
  n1 <- length(x)  
  n2 <- length(y)
  s1 <- sd(x)     
  s2 <- sd(y)
  sp <- sqrt(((n1 - 1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 - 2))
  d <- (mean(x) - mean(y)) / sp
  return(d)
}
dl_cal <- cohens_efecto(def_ctrl$IE,def_Fert$IE)
dl_cal
round(dl_cal,2)
