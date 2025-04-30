#26. Create a complex ggplot visualization that includes multiple geoms and a theme
#    customization.
ggplot(df, aes(x, y, color = category)) +
  geom_point(size = 3) +
  geom_line() +
  theme_minimal() +
  ggtitle("Complex Plot") +
  theme(plot.title = element_text(hjust = 0.5, size = 14))

#27. Write code to plot data points with condition-based shapes and colors using ggplot.
df$shape <- ifelse(df$x > 5, 16, 17)
ggplot(df, aes(x, y, color = category, shape = factor(shape))) + geom_point()

#28. Develop an R function that saves plots in both JPEG and PDF formats automatically.
save_plot <- function(plot, name) {
  jpeg(paste0(name, ".jpg"))
  print(plot)
  dev.off()
  
  pdf(paste0(name, ".pdf"))
  print(plot)
  dev.off()
}

#29. Write code to implement a custom plot theme in ggplot2, adjusting fonts, backgrounds, and
#    grid lines.
custom_theme <- theme(
  plot.title = element_text(size = 16, face = "bold"),
  panel.background = element_rect(fill = "lightgray"),
  panel.grid.major = element_line(color = "white")
)
ggplot(df, aes(x, y)) + geom_point() + custom_theme

#30. Demonstrate using ifelse() in R to create a new variable and plot this conditional variable
#    using ggplot2.
df$new_var <- ifelse(df$y > 40, "Above", "Below")
ggplot(df, aes(x, y, color = new_var)) + geom_point()
