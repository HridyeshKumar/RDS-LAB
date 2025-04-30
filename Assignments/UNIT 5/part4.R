#16. Create a ggplot plot with explicitly defined x and y axis limits.
ggplot(df, aes(x, y)) +
  geom_point() +
  xlim(0, 12) +
  ylim(0, 100)

#17. Use logical conditions to highlight subsets of points in different colors.
df$highlight <- ifelse(df$y > 50, "High", "Low")
ggplot(df, aes(x, y, color = highlight)) + geom_point()

#18. Demonstrate adding a legend manually using ggplot2.
ggplot(df, aes(x, y)) +
  geom_point(aes(color = highlight)) +
  scale_color_manual(name = "Group", values = c("High" = "red", "Low" = "blue"))

#19. Create a plot with different line types and widths.
ggplot(df, aes(x, y, linetype = category)) +
  geom_line(size = 1.5)

#20. Write a code snippet using geom_segment() to add customized line segments to your plot.
ggplot(df, aes(x, y)) +
  geom_point() +
  geom_segment(aes(x = 2, xend = 8, y = 4, yend = 64), color = "black", linetype = "dashed")
