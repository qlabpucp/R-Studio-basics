## Solucionario:

## Vectores:

# 1. Crea un vector llamado "edades" que contenga por lo menos 5 elementos:
edades <- c(25, 30, 35, 40, 45)

# 1.1. A partir de ese vector crea un nuevo vector llamado "doble_edades" que contenga el doble de cada edad en el vector "edades".
doble_edades <- edades * 2
view(doble_edades)

# 2. Dado el siguiente vector: nombres <- c("Juan", "María", "Carlos", "Laura"), cambia el nombre "Carlos" por "Pedro".
nombres <- c("Juan", "María", "Carlos", "Laura")
nombres[nombres == "Carlos"] <- "Pedro"


## Matrices:

# 3. Crea una matriz numérica de 4x5 llamada "matriz_a" y suma todos los elementos de la primera fila
matriz_a <- matrix(1:20, nrow = 4, ncol = 5)
suma_primera_fila <- sum(matriz_a[1, ])

# 4. Crea una matriz a partir de 3 o más vectores
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
vector3 <- c(7, 8, 9)
matriz_c <- matrix(c(vector1, vector2, vector3),nrow = 4,
                   ncol = 3)

# 5. Dada la matriz matriz_b <- matrix(1:9, nrow = 3), elimina la segunda columna de matriz_b
matriz_b <- matrix(1:9, nrow = 3)
matriz_b <- matriz_b[, -2]


##Listas

# 6. Dada la lista: mi_lista <- list(a = 1:5, b = c("rojo", "verde", "azul")), agrega un nuevo elemento que contenga datos sobre nombres de mascotas que te gustan y luego elimina el elemento a.
mi_lista <- list(a = 1:5, b = c("rojo", "verde", "azul"))
mi_lista$nombres_mascotas <- c("Luna", "Buddy", "Max")
mi_lista$a <- NULL

# 7. Crea una lista que contenga datos personales que consideres relevantes.
datos_personales <- list(
  nombre = "Juan",
  edad = 30,
  ciudad = "Ciudad de México",
  ocupacion = "Ingeniero"
)

# 8. Dada la lista de vectores mi_lista <- list(v1 = c(1, 2, 3), v2 = c(4, 5, 6), v3 = c(7, 8, 9)), calcula el producto punto entre v1 y v2
producto_punto <- sum(mi_lista$v1 * mi_lista$v2)

## Data frames

# 9. Dado el data frame: empleados <- data.frame(nombre = c("Juan", "María", "Pedro"), departamento = c("Ventas", "RRHH", "IT"), salario = c(3000, 3500, 4000)), cambia el empleado "Pedro" por su nombre correcto "Piero". Luego, ordena el data frame con la variable de salario.
empleados <- data.frame(nombre = c("Juan", "María", "Pedro"), departamento = c("Ventas", "RRHH", "IT"), salario = c(3000, 3500, 4000))
empleados$nombre[empleados$nombre == "Pedro"] <- "Piero"
empleados <- empleados[order(empleados$salario), ]

# 10. Dado el data frame: ventas <- data.frame(producto = c("A", "B", "C"), cantidad = c(100, 150, 200), precio_unitario = c(55, 81, 100)), cambia el precio unitario del producto "B" a 120 y saca el promedio de la variable precio_unitario.
ventas <- data.frame(producto = c("A", "B", "C"), cantidad = c(100, 150, 200), precio_unitario = c(55, 81, 100))
ventas$precio_unitario[ventas$producto == "B"] <- 120
promedio_precio_unitario <- mean(ventas$precio_unitario)

