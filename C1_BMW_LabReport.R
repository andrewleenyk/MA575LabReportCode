setwd('/Users/andrewlee/MA575')
install.packages("ggplot2")
library(ggplot2)
bmw_data <- read.csv("bmw_pricing_challenge.csv", header=TRUE, as.is=TRUE)
names(bmw_data)
View(bmw_data)
names(bmw_data)
summary(bmw_data)

library(ggplot2)

ggplot(bmw_data, aes(x = engine_power, y = price)) +
  geom_point() +
  labs(title = "Scatterplot of Price vs. Engine Power",
       x = "Engine Power",
       y = "Price") +
  theme_minimal()

model <- lm(price ~ engine_power, data=bmw_data)

summary_output <- summary(model)
print(summary_output)

ggplot(bmw_data, aes(x = engine_power, y = price)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Scatterplot with Linear Regression Fitted: Price vs. Engine Power",
       x = "Engine Power",
       y = "Price") +
  theme_minimal()
