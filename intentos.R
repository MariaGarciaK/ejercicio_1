#Décimocuarto intento de resolver esto.
setwd("C:/Users/maria/Documents/BDATA I/DATA SCIENCE l/Reto 4/Individual git/ejercicio_1/Datos")
library(readxl)
library(dplyr)
df<-read_xlsx("online_retail_II.xlsx")

str(df)
#Las dos primeras variables tienen caracteres en su id, por eso no podemos cambiarlo a numeric o integer.
df$`Customer ID`<-as.character(df$`Customer ID`)

summary(df$Quantity)
summary(df$Price)
table(df$Country)

#7.	Calcula cuántos pedidos distintos hay en el fichero
df%>%
  group_by(Invoice)%>%
  count(Invoice)
# Groups:   Invoice [28,816]

#10.	Calcula el precio medio de producto por pedido
df%>%
  group_by(StockCode)%>%
  summarise(mean(Price))

#12.	Calcula el número de productos por pedido
df%>%
  group_by(Invoice)%>%
  count(Invoice)

#13.	Calcula el precio por pedido
df%>%
  group_by(Invoice)%>%
  summarise(suma=sum(Price*Quantity))

