#Apriori

#Data Preprocessing

#install.packages('arules') #used for mining 
#association rules and frequent itemset
library(arules)
dataset = read.csv('Market_Basket_Optimisation.csv',header = FALSE)
dataset = read.transactions('Market_Basket_Optimisation.csv',sep=','
                            ,rm.duplicates = TRUE)



