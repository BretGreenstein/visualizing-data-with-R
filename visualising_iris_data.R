library(tidyverse)
library(ggplot2)

data(iris)

### Summarizing the data
head(iris)

colMeans(iris[-5])
colSums(iris[-5])
rowSums(iris[-5])

### Scatter plots
# basic scatter plot
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
ggplot(iris, aes(x=Petal.Length, y=Petal.Width)) + geom_point()

# building on the scatter plots
plen <- ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width))
plen +
  geom_point() +
  coord_flip()

ptcolor <- 'grey20' # plot text color
plen +
  geom_point() +
  ggtitle("Iris Petal Size Analysis\nData Source: Anderson (1935)") +
  labs(x="Petal Length (cm)", y="Petal Width (cm)") +
  theme(
    plot.title=element_text(size=14, lineheight=0.8, color=ptcolor, hjust=0.5),
    axis.title.x=element_text(color=ptcolor),
    axis.title.y=element_text(color=ptcolor))


common_theme <- function() {
  ptcolor <- 'grey20' # plot text color
  theme(
    plot.title=element_text(size=14, lineheight=0.8, color=ptcolor, hjust=0.5),
    axis.title.x=element_text(color=ptcolor),
    axis.title.y=element_text(color=ptcolor))
}

plen +
  geom_point() +
  ggtitle("Iris Petal Size Analysis\nData Source: Anderson (1935)") +
  labs(x="Petal Length (cm)", y="Petal Width (cm)") +
  common_theme() +
  theme(plot.title=element_text(color="#2255DD"))

ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point(aes(colour=Species), shape=15, size=1.5) +
  ggtitle("Iris Sepal Size Analysis\nData Source: Anderson (1935)") +
  labs(x="Sepal Length (cm)", y="Sepal Width (cm)") +
  common_theme() + 
  geom_smooth()

















