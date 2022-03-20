library(ggplot2)

sample_1 <- data.frame(dose=c("D0.5", "D1", "D2"),
                 len=c(4.2, 10, 29.5))

sample_2 <- data.frame(supp=rep(c("VC", "OJ"), each=3),
                  dose=rep(c("D0.5", "D1", "D2"),2),
                  len=c(6.8, 15, 33, 4.2, 10, 29.5))

# Plot with 2 lines
p <- ggplot(sample_2, aes(x=dose, y=len, group=supp)) +
  geom_line(linetype ="dashed", aes(color=supp)) 

# add points then change point size
p + geom_point(size = 3, aes(color=supp))



