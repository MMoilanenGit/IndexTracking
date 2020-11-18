
# Plot if there is differences between Adj_close and Close values.

CloseValues = data %>%
                select((1:10), contains("Close"))
CloseValues

require(ggplot2)

ggplot(data, aes(x=DateCol, y=FITB)) +
  geom_line() + 
  xlab("")



library(ggplot2)
library(reshape2)


df <- data.frame(data$DateCol, data$FITB, data$FITB_Close)
# melt the data to a long format
df2 <- melt(data = df, id.vars = "data.DateCol")
# plot, using the aesthetics argument 'colour'
ggplot(data = df2, aes(x = data.DateCol, y = value, colour = variable)) + geom_line()


# Or by adding lines
ggplot() + 
  geom_line(data = CloseValues, aes(x = DateCol, y = FITB), color = "red") +
  geom_line(data = CloseValues, aes(x = DateCol, y = FITB_Close), color = "blue") +
  xlab('Date') +
  ylab('Price')


