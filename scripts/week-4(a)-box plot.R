#load the data
data(iris)

#Understand the data
str(iris)
View(iris)
class(iris)
?iris
#Basic Box plot
boxplot(iris$Sepal.Length)

#Add title & Labels
boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal.Length",
        ylab = "Sepal_Length",
        col = 'skyblue')

#Grouped Box plot(by Species)
boxplot(Sepal.Length~Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c('pink','green','yellow'))

#Multi-Variable Box Plot
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab = "Sepal_Length",
        col = 'blue')
boxplot(iris[,1:4],
        main = "Multi Variable Box Plot",
        col = c('pink','green','blue','violet'))

#Using Custom color Palette
species_colors<-c("setosa"="red",
                  "versicolor"="steelblue",
                  "virginica"="green")
boxplot(
  Sepal.Length~Species,
  data = iris,
  col = species_colors,
  main = "Sepal Length by Species(Custom Color Palette"
)

library(ggplot2)

ggplot(iris,
    aes(x=Species,y=Sepal.Length))+
  geom_boxplot()

#Colored box plot by species
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  theme_minimal()

#Using Manual Color Palettes
ggplot(iris,aes(x=Species, y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  scale_fill_manual(
    values=c(
      "setosa"="red",
      "versicolor"="blue",
      "virginica"="yellow"
    )
  )+
  theme_minimal()

