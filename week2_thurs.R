# Load the managers dataset
managers_data <- read.csv("managers.csv", na = "")
managers_data
str(managers_data)

# Dealing with missing data

# Listwise deletion
new_data <- na.omit(managers_data)
new_data

# Doesnt work with char
# so needs to be converted
managers_data$Q4 <- as.integer(managers_data$Q4)
managers_data$Q5 <- as.integer(managers_data$Q5)
str(managers_data)

# Use complete.cases to show where data
# rows are complete
complete_data <- complete.cases(managers_data)
complete_data
sum(complete_data)

# List the rows wheredata is not missing
complete_data <- managers_data[complete.cases(managers_data),]
complete_data

str(managers_data)
# Age column is still an issue
# so need to convert it to int
managers_data$Age <- as.integer(managers_data$Age)
managers_data
str(managers_data)

# List incomplete cases
complete_data <- managers_data[!complete.cases(managers_data),]
complete_data

# Find the sum of missing age values
(is.na(managers_data$Age))
(is.na(managers_data))
sum(is.na(managers_data$Age))

mean(is.na(managers_data$Age))
mean(is.na(managers_data))
install.packages("mice")
md.pattern(managers_data)

# Use VIM package to show missing values
install.packages("VIM")
library(VIM)
missing_values <- aggr(managers_data, prop = FALSE, numbers = TRUE)
summary(missing_values)
missing_values <- aggr(managers_data, prop = TRUE, numbers = TRUE)
summary(missing_values)