temperatura <- read.csv("C:/Repositorios/Posgrado_Estadistica_2025/temperatura.csv") 
View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de columnas primero filas luego columnas
names(temperatura) #nombres de columnas 
str(temperatura) #estructura del data frame 

summary(temperatura) #resumen estadistico

names(temperatura) <- c("Anual","Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic") #corregir nombre de columna

temperatura$media_anual <- rowMeans(temperatura[,2:13])

temperatura$media_anual <- rowMeans(temperatura[11:21,])

head(temperatura)
