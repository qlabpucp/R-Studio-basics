# Resolución 

#1.1
library(dplyr)
data_50_plus <- data %>% filter(edad >= 50)

#1.2
usa1 %>% 
  filter(aborto=="4. Permitir", sexo=="Hombre", edad >= 50)

#1.3
data_filtered <- data %>% filter(sexo == "Mujer", marital == "1. Casado", ingresos > 30000)


#2.1
# Ver la estructura de las variables en el dataframe
str(usa)

# Convertir las variables gorepre y gorepst a tipo numérico
usa$gorepre <- as.numeric(usa$gorepre)
usa$gorepst <- as.numeric(usa$gorepst)

# Verificar la conversión
str(usa)

#2.2
# Crear la nueva variable difgore
usa <- usa %>% mutate(difgore = gorepst - gorepre)

# Ordenar los datos en orden descendente según gorepst
usagoredesc <- usa %>% arrange(desc(gorepst)) %>%
  select(id, difgore, gorepre, gorepst)

# Visualizar el resultado
View(usagoredesc)

#2.3
# Crear la variable grupo_edad
usa <- usa %>% mutate(grupo_edad = case_when(
  edad < 30 ~ "Joven",
  edad >= 30 & edad <= 60 ~ "Adulto",
  edad > 60 ~ "Mayor"
))

# Visualizar el resultado
View(usa)


#3.1

