#4
?CO2

#5
head(CO2)

#6
plot(CO2$Plant,
    CO2$uptake,
    col = "lightblue",
    main = "CO2 Uptake in Grass Plants",
    xlab = "Plant",
    ylab = "Uptake")

#7
concentrations <- table(CO2$Conc)

#8
barplot(concentrations,
    xlim = c(0, 1000),
    ylim = c(0, 12),
    col = "orange",
    main = "CO2 Concentration Data", # main title
    xlab = "Concentrations",  # x-axis label
    ylab = "Number"  # y-axis label
)

#9
rm(list = ls())

#10
par(mfrow = c(1, 2))

#11
hist(CO2$Uptake[CO2$Type == "Quebec"],
    breaks = 9, # suggestion of number of bars
    main = "CO2 Uptake for Quebec",
    xlab = "",
    ylab = "Frequency",
    col = "red"
)
hist(CO2$Uptake[CO2$Type == "Mississippi"],
    breaks = 9, # suggestion of number of bars
    main = "CO2 Uptake for Mississippi",
    xlab = "",
    ylab = "Frequency",
    col = "darkgreen"
)

#12
par(mfrow = c(1, 1))

#13
summary(CO2$uptake[CO2$Type == "Mississippi"])

#14
summary(CO2$uptake[CO2$Type == "Quebec"])
