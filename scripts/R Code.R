# data
df <- data.frame(
  region = c("EAST", "LONDON", "MIDLANDS", "ENGLAND", 
             "NORTH EAST AND YORKSHIRE", "NORTH WEST", "SOUTH EAST", 
             "SOUTH WEST"),
  wait_time = c(14.359870305153, 13.0381205562321, 13.3695669158587,
                   12.9208401255803, 10.6290210729544, 13.3526741738835,
                   12.8941699602088, 11.115271490866),   
  
  
  #absence_rate = c(1.0865234375, 0.956510416666667, 1.19111979166667, 
   #             1.1244140625, 1.23001302083333, 1.29541666666667,
    #            1.03020833333333, 1.10411458333333)

  absence_rate = c(1.135, 1.09, 1.3025, 1.22, 1.3425, 1.4225, 1.085, 1.165)
  )

## scatter plot
plot(df$wait_time, df$absence_rate,
     xlab = "Wait Time (Weeks)", ylab = "Absence Rate (%)",
     main = "Absence Rate vs Wait Time by Region",
     pch = 19, col = "blue", xlim=c(min(df$wait_time)-1, max(df$wait_time)+1),
     #ylim=c(0.5, 1.5)
     )

# Add region labels next to each dot
text(df$wait_time, df$absence_rate, labels=df$region, pos=4, cex=0.8)

# Line of best fit
fit <- lm(absence_rate ~ wait_time, data=df)
abline(fit, col="red", lwd=2)   

# correlation coefficient
coeff <- coefficients(fit)

# Regression line formula
paste0("y = ", round(coeff[2],3), "x + ", round(coeff[1],3))

# Pearsons correlation coeffecient
cor(df$wait_time, df$absence_rate)

