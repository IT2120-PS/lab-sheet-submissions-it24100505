setwd("C:/Users/it24100505/Desktop/IT24100505")
getwd()
DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(branch_data)
str(branch_data)

breaks <- seq(20, 70, length.out = 10)
names(DeliveryTimes) <- "DeliveryTime"

hist(DeliveryTimes$DeliveryTime,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Time (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightblue",
     border = "black")


hist_data <- hist(DeliveryTimes$DeliveryTime, 
                  breaks = seq(20, 70, length.out = 10), 
                  plot = FALSE, 
                  right = FALSE)

cum_freq <- cumsum(hist_data$counts)

break_points <- hist_data$breaks[-1] 

plot(break_points, cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "blue",
     pch = 16)


