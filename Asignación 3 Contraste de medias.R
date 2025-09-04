#Asignación 3: Contraste de medias
data(iris)
head(iris)
summary(iris)
str(iris)

data_sub <- subset(iris, Species %in% c("versicolor", "virginica"))
table(data_sub$Species)



tapply(data_sub$Petal.Length, data_sub$Species, summary)
tapply(data_sub$Petal.Length, data_sub$Species, mean)
tapply(data_sub$Petal.Length, data_sub$Species, sd)

#Pregunta de investigacion: ¿Existen diferencias en el largo del pétalo 
#(Petal.Length) entre versicolor y virginica?

#Hipótesis nula (H₀): Las medias poblacionales de Petal.Length 
#son iguales en ambas especies.
#Hipótesis alternativa (H₁): Las medias poblacionales de Petal.Length 
#son diferentes entre ambas especies.

var.test(Petal.Length ~ Species, data = data_sub)
t.test(Petal.Length ~ Species, data = data_sub, var.equal = FALSE)  # Welch



library(effsize)
cohen.d(Petal.Length ~ Species, data = data_sub)




boxplot(Petal.Length ~ Species, data = data_sub,
        col = c("lightblue", "lightgreen"),
        main = "Comparación de Petal.Length entre especies",
        ylab = "Petal.Length (cm)")


library(ggplot2)

ggplot(data_sub, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_violin(trim = FALSE, alpha = 0.6) +
  geom_boxplot(width = 0.1, outlier.shape = NA, alpha = 0.8) +
  labs(title = "Distribución de Petal.Length en dos especies",
       y = "Petal.Length (cm)") +
  theme_minimal()

# Planteamiento del problema:
# Se busca determinar si existen diferencias significativas
# en el largo del pétalo (Petal.Length) entre Iris versicolor
# e Iris virginica.
#
# Resultados numéricos:
# Media Versicolor: 4.26 cm (sd = 0.47)
# Media Virginica : 5.55 cm (sd = 0.55)
# Prueba t: t = -12.60, gl = 98, p < 0.001
# Cohen’s d = -2.52 (efecto muy grande)
#
# Interpretación:
# En el análisis comparativo de la longitud del pétalo entre Iris versicolor
# y Iris virginica, se encontraron diferencias estadísticamente 
# significativas en las medias poblacionales de esta variable morfológica.
# Los resultados obtenidos mediante la prueba t de Student muestran que 
# I. virginica presenta pétalos considerablemente más largos (media ≈ 5.55 cm) 
# que I. versicolor (media ≈ 4.26 cm),con un tamaño del efecto
# muy grande (Cohen’s d ≈ -2.52), esto indica que la diferencia no solo es 
# estadísticamente robusta, sino que también posee una alta relevancia biológica.

