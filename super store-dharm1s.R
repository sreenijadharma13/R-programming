#mean of cycle time
mean(Sales_gl$`Cycle time`)

#medium of cycle time
median(Sales_gl$`Cycle time`)

#mode of cycle time
mode(Sales_gl$`Cycle time`)

#standard deviation of cycle time
sd(Sales_gl$`Cycle time`)

#histogram for cycle time
hist(Sales_gl$`Cycle time`,
     main = "Histogram of cycle time",
     col="blue",
     xlab="cycle time",
     ylab= "frequency",
     breaks = 20
     )

#boxplot of sales by subcategory
ggplot(Sales_gl, aes(x=`Sub-Category`, y= Sales))+
  geom_boxplot(color ="blue")+  labs(title = "box plot of sales by subcategory",
       x= "sub-category",
       y= "sales")

#boxplot of profit by subcategory
ggplot(Sales_gl, aes(x=`Sub-Category`, y= Profit))+
  geom_boxplot(color="blue" )+  labs(title = "box plot of profit by subcategory",
       x= "sub-category",
       y= "profit")

#third question
#boxplot of sales by segment
ggplot(Sales_gl, aes(x = Segment, y = Sales)) +
  geom_boxplot(color = "blue") + labs(title = "Distribution of Sales by Segment",
       x = "Segment",
       y = "Sales")

#boxplot of profit by segment
ggplot(Sales_gl, aes(x = Segment, y = Profit)) +
  geom_boxplot(color = "blue") + labs(title = "Distribution of profit by Segment",
                                      x = "Segment",
                                      y = "profit")

# Create a matrix
my_matrix <- matrix(1:6, nrow = 2, ncol = 3)
my_matrix
# Create a data frame
my_dataframe <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(90, 85, 78)
)
my_dataframe
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
roll()   
describe(Sales_gl$Profit)
boxplot(Sales_gl$Quantity,
        main ="Boxplot of Quantity”,
xlab="Quantity,
        ylab="Values")

ggplot(Sales_gl, aes(x=Sales_gl$Quantity)) +
  geom_density(fill = "blue", alpha = 0.6) + # Customize fill color
  and transparency
labs(
  title = "Density Plot of Quantity",
  x = "Quantity",
  y = "Density"
) +
  theme_minimal()

IQR(Sales_gl$Sales)

mean(Sales_gl$Sales)


summary (Sales_gl$Sales) 
boxplot(Sales_gl$Sales)
summary (Sales_gl$Profit)
