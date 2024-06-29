#load the forecast package
library(forecast)
library(Metrics)

#sample time sries data
my_ts <- ts(c(Forecast_1$Demand), frequency = 1)

validation_length <- 9
best_alpha <- NULL
min_error <- Inf

# Perform exponential smoothing
# Choose the appropriate method for your data: "ZZZ", "AAN", "ANA", "AAA", etc.# For example, "AAN"stands for additive error, additive trend, and no seasonality
for(alpha in seq(0.1, 0.9, by = 0.11)){
ets_model <- ets(my_ts, model = "AAN", alpha = alpha)
forecast_values <- forecast(ets_model, h = validation_length) 
error <- mae(forecast_values$mean, my_ts[(length(my_ts) - validation_length + 1): length(my_ts)])
if(error < min_error){
min_error <- error
best_alpha <- alpha
}
}


# Print the forecasted values
print(paste("best alpha:", best_alpha))
print(paste("mae:", min_error))
print(forecast_values)