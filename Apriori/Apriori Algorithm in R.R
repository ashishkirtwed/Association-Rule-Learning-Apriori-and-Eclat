#Apriori

#Data Preprocessing

#install.packages('arules') #used for mining 
#association rules and frequent itemset
library(arules)
dataset = read.csv('Market_Basket_Optimisation.csv',header = FALSE)
dataset = read.transactions('Market_Basket_Optimisation.csv',sep=','
                            ,rm.duplicates = TRUE)

#Getting the summary of the dataset 
summary(dataset)

itemFrequencyPlot(dataset,topN=50)

#Training Apriori on the dataset
rules = apriori(data=dataset,parameter=list(support=0.003,confidence=0.4))

#Visualize the result
inspect(sort(rules,by='lift')[1:10])
