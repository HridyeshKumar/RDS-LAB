#21. Write a function to dynamically read and plot data from a user-selected file.
read_and_plot <- function() {
  file <- file.choose()
  data <- read.csv(file)
  print(ggplot(data, aes(x = data[[1]], y = data[[2]])) + geom_point())
}

#22. Demonstrate the combined usage of geom_point, geom_line, and geom_hline in a single
#    ggplot.
ggplot(df, aes(x, y)) +
  geom_point() +
  geom_line() +
  geom_hline(yintercept = 50, color = "green")

#23. Create a customized legend using manual scales and guides in ggplot2.
ggplot(df, aes(x, y, color = category)) +
  geom_point() +
  scale_color_manual(values = c("A" = "orange", "B" = "blue")) +
  guides(color = guide_legend(title = "Category Type"))

#24. Write R code that handles missing values while reading external data into a data frame.
df_na <- read.csv("file_with_nas.csv", na.strings = c("", "NA", "NULL"))

#25. Construct a ggplot that categorizes points into multiple groups based on two numeric
#    conditions.
df$group <- with(df, ifelse(x > 5 & y > 30, "Group1", "Group2"))
ggplot(df, aes(x, y, color = group)) + geom_point()
