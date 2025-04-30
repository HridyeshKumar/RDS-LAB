#6. Demonstrate how to use geom_point() to modify size and shape of points.
ggplot(df, aes(x, y)) +
  geom_point(size = 3, shape = 17)

#7. Explain how to list files in the current working directory.
list.files()

#8. Write code to set a working directory to a specified folder.
setwd("your/folder/path")

#9. Read a CSV file from your local system into an R data frame.
local_data <- read.csv("file.csv")

#10. Read a CSV file from an online source into an R data frame.
url_data <- read.csv("https://example.com/data.csv")
