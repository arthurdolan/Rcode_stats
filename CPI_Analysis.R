load("cpiAll.Rdata")
ls()
model <- lm(United.States ~ France + Germany, data = cpi)

model_summary <- summary(model)
p_values <- model_summary$coefficients[, 4]

# Print the p-values
print(p_values)
n <- nrow(cpi)
print(n)
t_value <- qt(0.975, df = 18)
print(t_value)
cor(cpi$France, cpi$Germany)



fev$log_FEV <- log(fev$FEV) 
model <- lm(log_FEV ~ Age, data = fev)  # Fit the model
summary(model)  # 
prediction <- predict(model, newdata = data.frame(Age = 10), se.fit = TRUE)
prediction_var <- prediction$se.fit^2  # Variance is the square of standard error
print(prediction_var)
predicted_value <- prediction$fit  # Predicted value
se_fit <- prediction$se.fit        # Standard error of prediction

test_statistic <- predicted_value / se_fit
print(test_statistic)
