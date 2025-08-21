




# importar datos ----------------------------------------------------------
temperatura <- read.csv("C:/Repositorios/Posgrado_Estadistica_2025/temperatura.csv") 
View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de columnas primero filas luego columnas
names(temperatura) #nombres de columnas 
str(temperatura) #estructura del data frame 

summary(temperatura) #resumen estadistico

names(temperatura) <- c("Anual","Ene",
                        "Feb","Mar","Abr","May","Jun","Jul","Ago","Sep",
                        "Oct","Nov","Dic") #corregir nombre de columna

temperatura$media_anual <- rowMeans(temperatura[,2:13])

temperatura$media_anual <- rowMeans(temperatura[11:21,])

head(temperatura)

f

temp <-  temperatura [ ,2:13]
temperatura[2,2]

boxplot(temperatura)

colores <- c("navajowhite","salmon","red")

boxplot(temp ,col = "salmon", main= "temperatura 2020:205",
      xlab = "meses", 
      ylab= "temperatura (c)")
# importar datos web ------------------------------------------------------

read.csv()
url <- "https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades-inspeccion-movilizacion.csv"


senacia <-read.csv(url,header=T) 
read.csv("https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades-inspeccion-movilizacion.csv")

senacica <-read.csv(url,header=T) 
View(senacica)

