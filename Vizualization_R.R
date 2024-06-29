
#HISTOGRAM QUATITY
hist(Sales_gl$Quantity,
     main = "histogram of quantity",
     xlab = "Quantity",
     ylab = "Frequency",
     col = "blue",
     border = "black",
     breaks = 20)
#HISTOGRAM cycle time
hist(Sales_gl$`Cycle time`,
     main = "histogram of cycle time",
     xlab = "Quantity",
     ylab = "Frequency",
     col = "blue",
     border = "black",
     breaks =20)
#box plot
boxplot(Sales_gl$Quantity,
       main= "boxplot of quantiy",
       xlab= "quantity",
       ylab= "values")
#boxplot comparision
ggplot(Sales_gl,aes(x=Sales_gl$`Sub-Category`, y=Sales_gl$Quantity))+
  geom_boxplot()+ labs(title= "box plot of quantity by catergory",
                             x= "category",
                             y= "quantity")