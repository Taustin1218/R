# Question 1
library(help = "datasets")

# Question 2
?ChickWeight

# Question 3
head(ChickWeight)

# Question 4
plot(ChickWeight$Diet,
    col = "darkgreen"
)

# Question 5
plot(ChickWeight$Diet, # data points for x-axis
    ChickWeight$weight,   # data points for the y-axis
    col = "blue",
    pch = 19,
    main = "ChickWeight: Diet vs. Chick Body Weight",
    xlab = "Diet Chick Received", # x-axis label
    ylab = "Chick Body Weight (gm)"   # y-axis label
)

# Question 6
?par
?c
par(mfrow = c(3, 1))

# Question 7
plot(ChickWeight$Time[ChickWeight$Chick == 1],
    xlim = c(0, 12), # limit x-axis from 0 to 3
    main = "ChickWeight: Chick 1",
    xlab = "Number Days",
    ylab = "Chick Body Weight (gm)",
    col = "red",
    pch = 19
)

plot(ChickWeight$Time[ChickWeight$Chick == 2],
    xlim = c(0, 12), # limit x-axis from 0 to 3
    main = "ChickWeight: Chick 2",
    xlab = "Number Days",
    ylab = "Chick Body Weight (gm)",
    col = "blue",
    pch = 19
)

plot(ChickWeight$Time[ChickWeight$Chick == 3],
    xlim = c(0, 12), # limit x-axis from 0 to 3
    main = "ChickWeight: Chick 3",
    xlab = "Number Days",
    ylab = "Chick Body Weight (gm)",
    col = "darkgreen",
    pch = 19
)

# Question 8
par(mfrow = c(1, 1))

# Question 9
diets <- table(ChickWeight$Diet)

# Question 10
barplot(diets,
    col = "darkgreen",   # blue bar color
    main = "ChickWeight: Diets", # main title
    xlab = "Number Days",  # x-axis label
    ylab = "Chick Body Weight (gm)"  # y-axis label
)

# Question 11
rm(list = ls())

# Question 12
summary(ChickWeight$weight[ChickWeight$Diet == 1])
