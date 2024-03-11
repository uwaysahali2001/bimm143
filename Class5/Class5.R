#' ---
#' title: "Class 5"
#' author: "Uwaysah Ali"
#' date: "4/25/23"
#' ---

#install the package ggplot2
#install.packages("ggplot2")

library(ggplot2)

View(cars)

#A quick base R plot - this is not ggplot
plot(cars)

#our first ggplot
ggplot(data=cars) + aes(x=speed, y=dist) + geom_point()

p <- ggplot(data=cars) + aes(x=speed, y=dist) + geom_point()

#add a line with geom_line()
p + geom_line()

#add a trend line close to the data
p+geom_smooth()

p+geom_smooth(method="lm")

#----------------------#

#read in our drug expression data
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

#Q. how many genes are in this data set
nrow(genes)

#Q. how many upregulated genes
table(genes$State)

#Q. what fraction of total genes is upregulated
round(table(genes$State)/nrow(genes) * 100, 2)

#let's make a first plot attempt
g <- ggplot(data=genes) + aes(x=Condition1, y=Condition2, col=State) + geom_point()

g

#add some color
g + scale_color_manual(values=c("blue", "gray", "red")) + labs(title="Gene expression changes", x="Control (no drug)") + theme_bw()

install.packages('tinytex')
tinytex::install_tinytex

