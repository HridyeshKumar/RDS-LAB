#11. Create a ggplot scatter plot, and differentiate points by color based on a categorical
#    variable.
df$category <- rep(c("A", "B"), each = 5)
ggplot(df, aes(x, y, color = category)) + geom_point()

#12. Demonstrate how to save a plot as a PDF file.
pdf("plot.pdf")
ggplot(df, aes(x, y)) + geom_point()
dev.off()

#13. Add horizontal and vertical reference lines to a plot using ggplot2.
ggplot(df, aes(x, y)) +
  geom_point() +
  geom_hline(yintercept = 25, color = "blue") +
  geom_vline(xintercept = 5, color = "red")

#14. Create a ggplot plot with customized colors for different categories.
ggplot(df, aes(x, y, color = category)) +
  geom_point() +
  scale_color_manual(values = c("A" = "green", "B" = "purple"))

#15. Write R code to add annotations (text and arrows) to a ggplot plot.
ggplot(df, aes(x, y)) +
  geom_point() +
  annotate("text", x = 5, y = 25, label = "Midpoint", color = "red") +
  annotate("segment", x = 5, xend = 6, y = 25, yend = 30, arrow = arrow())
