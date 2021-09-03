install.packages("arules")
install.packages("arulesSequences")
library(arules)
library(arulesSequences)

sequence = data.frame(read.csv('C:/Users/ChenTingting/Desktop/javasequence.csv' ,header = 1))
#sequence$action <- as.factor(sequence$action)
item <- factor(c(sequence$action))
seqid <- c(sequence$jobnum)
eventid <-c(sequence$id)

data <- data.frame(item=item)
data.tran <- as(data, "transactions")
transactionInfo(data.tran)$sequenceID <- seqid
transactionInfo(data.tran)$eventID <- eventid
transactionInfo(data.tran)

result <- cspade(data.tran, parameter = list(support = 0.05), control = list( verbose = TRUE))
result <- sort(result, by = "support")
inspect(result)

