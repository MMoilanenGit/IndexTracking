

require(dplyr)

library(readr)
data <- read_csv("banks012005102020", skip = 1)


ColNamesVector = function(data){
  
  #IAT Adj Close
  #IAT_1 Close
  #IAT_2 High
  #IAT_3 Low
  #IAT_4 Open
  #IAT_5 Volume
  
  colnames(data) <- gsub("_1", "_Close", colnames(data))
  colnames(data) <- gsub("_2", "_High", colnames(data))
  colnames(data) <- gsub("_3", "_Low", colnames(data))
  colnames(data) <- gsub("_4", "_Open", colnames(data))
  colnames(data) <- gsub("_5", "_Volume", colnames(data))
}  

# Rename columns
colnames(data) = ColNamesVector(data)


data = data %>%
          slice(-(1)) %>%
          select(-c(contains("CFG"))) %>%
          select(-c(contains("FRC"))) %>% ### Didnt load CFG and FRC data properly, will now just delete the cols
          rename(DateCol = X1) %>%
          mutate(DateCol = as.Date(DateCol, "%Y-%m-%d"))
str(data)
