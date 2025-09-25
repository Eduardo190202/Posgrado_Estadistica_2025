#Datos

datos <- data.frame(
  trigo=c(30,28,32,25,25,25,22,24,35,40),
  harina=c(25,30,27,40,42,40,50,45,30,25)
)
datos
datos$trigo

sumxi_yi <- sum(datos$trigo*datos$harina)
sumxi_yi
nxy <- length(datos$trigo)*mean(datos$trigo)*mean(datos$harina)

sumxi_yi-nxy

x12 <- sum(datos$trigo**2)
nx2 <- length(datos$trigo)*mean(datos$trigo)**2

b1 <- (sumxi_yi-nxy)/(x12-nx2)
b1

bo <- mean(datos$harina)-b1*mean(datos$trigo)
bo

call()
lm(formula = datos$harina-datos$trigo)

fit.lm <- lm(datos$harina~datos$trigo)
summary(fit.lm)

anova(fit.lm)

library(lmtest)
bptest(fit.lm)
fit.lm$model
fit.lm$coefficients
fit.lm$residuals
mean(fit.lm$residuals)
