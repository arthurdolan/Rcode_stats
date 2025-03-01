load("fev.Rdata")

model <- lm(log(FEV)~ Sex + Age + Sex:Age, data = fev)
summary(model)
fev.

fem12log <- predict(model, newdata = data.frame(Sex = factor(0, levels = c(0,1)), Age = 12))
fem12 <- exp(fem12log)
print(fem12)

2 * pt(-abs(4.61), df = 650)
