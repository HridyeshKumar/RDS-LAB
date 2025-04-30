#1. Write R code to install and load the ggplot2 package.
install.packages("ggplot2")
library(ggplot2)

#2. Use qplot() to create a simple scatter plot with vectors x and y.
x <- 1:10
y <- x^2
qplot(x, y)

#3. Save your plot as a JPEG file using R.
jpeg("scatter_plot.jpg")
qplot(x, y)
dev.off()

#4. Create a line plot connecting points using ggplot and geom_line().
df <- data.frame(x = 1:10, y = x^2)
ggplot(df, aes(x, y)) + geom_line()

#5. Add titles and axis labels to your plot using ggplot2.
ggplot(df, aes(x, y)) +
  geom_line() +
  ggtitle("Line Plot") +
  xlab("X Axis") +
  ylab("Y Axis")
