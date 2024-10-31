#desarrollo de mis data base

library(tidyverse)
df <-read.csv("Titanicv2")

view(Titanicv2)

#Explorar datos
 str(Titanicv2)
summary(Titanicv2)

#Dplyr manipulacion de datos

Titanicv2_1 <-select(Titanicv2, Name, Age, Embarked)
head(Titanicv2_1)

#rename

Titanicv2_rename <-rename(Titanicv2,
                          Nombre=Name,
                          Edad=Age,)
head(Titanicv2_rename)

#Filtrar
Titanicv2_filter <-filter(
  Titanicv2, Embarked == "Queenstown"
)

View(Titanicv2_filter)

Titanicv2_filter2 <-filter(
  Titanicv2, Pclass %in% c("Middle Class, Upper Class")
)

head(Titanicv2_filter2)

#Ordenar valores 

Titanicv2_arrange <-arrange(Titanicv2, Pclass)
View(Titanicv2_arrange)

Titanicv2_arrange_desc<-arrange(Titanicv2, desc(Pclass))
View(Titanicv2_arrange_desc)

Titanicv2 %>% 
  ggplot(aes(x=Sex))+
  geom_bar()

Titanicv2 %>% 
  ggplot(aes(x=Sex, y=Embarked, color=Sex)) +
  geom_point(position = "jitter")

