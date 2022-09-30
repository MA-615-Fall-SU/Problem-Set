myName <- "Qihan Su"

##1
data=iris
iris.vers = subset(iris,Species == "versicolor")
ans_1 <- iris.vers
ans_1

##2
sepal.dif = iris.vers$Sepal.Length - iris.vers$Sepal.Width
ans_2 <- sepal.dif
ans_2

##3
iris.vers = cbind(iris.vers,sepal.dif)
ans_3 <- iris.vers
ans_3

##4
head(mtcars)
x <- sapply(mtcars,class)
ans_4 <- x
ans_4

##5
attach(mtcars)
newmtc = data.frame(mpg,as.integer(cyl),disp,hp,drat,wt,qsec,as.integer(vs),as.integer(am),gear,carb)
sapply(newmtc,class)
x <- newmtc
ans_5 <- x
ans_5

##6
round(newmtc,1)
ans_6 <- newmtc
ans_6

##7
library(dplyr)
iris_7 <- filter(iris,Sepal.Width > 3.5, Species =="virginica")
ans_7 <- iris_7
ans_7


##8
iris_8 <- iris[iris$Species == "virginica" & iris$Sepal.Width > 3.5, 1:4]
ans_8 <- iris_8
ans_8

##9
r_id <- row.names(iris[iris$Species == "virginica"&iris$Sepal.Width > 3.5,1:4])
ans_9 <- r_id
ans_9

##10
library(ggplot2)
data = diamonds
diam_10 <- subset(diamonds,cut =="Ideal" & carat <= 0.21)
ans_10 = diam_10
ans_10

##11
library(ggplot2)
data = diamonds
diam_11 <- sum((diamonds$x+diamonds$y+diamonds$z) > 40)
ans_11 = diam_11
ans_11

##12
diam_12 <- sum(diamonds$price > 10000 | diamonds$depth >= 70)
ans_12 = diam_12
ans_12

##13
diam_13 <- diamonds[c(67,982), c(3,9)]
ans_13 <- diam_13
ans_13

##14
diam_14 <- diamonds[c(453,792,10489),]
ans_14 = diam_14
ans_14

##15
data = diamonds
diam_15 <- head(diamonds[, c(8,9,10)],10)
as.tibble(diam_15)
ans_15 = diam_15
ans_15

##16
newdiam = diamonds[1:1000, ]
tibble(newdiam)
ans_16 <- newdiam
ans_16

##17
library(dplyr)
newdiam_17 <- head(arrange(newdiam, price))
tibble(newdiam_17)
ans_17 = newdiam_17
ans_17

##18
library(dplyr)
set.seed(56)
diam750 = sample_n(diamonds,750)
tibble(diam750)
ans_18 = diam750
ans_18

##19
sum_diam750 <- summary(diam750)
ans_19 = sum_diam750
ans_19

