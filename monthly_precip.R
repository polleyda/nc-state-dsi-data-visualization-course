# Install ggplot2
install.packages("ggplot2")
library(ggplot2)

# Set working directory to sample data
setwd("~/Desktop/sample_data")

# Read in CSV file
data <- read.csv("monthly_precip_clean.csv", header = TRUE)

# Create a line graph
ggplot(data, aes(x=Month, y=Total_precip., color=Location))+
  geom_line()+
  scale_x_continuous(breaks=c(1:12))