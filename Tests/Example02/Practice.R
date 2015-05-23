require(xtable)
da <- read.csv("Data/weob.csv")  
head(da)
str(da)
matrix(da[seq(1990:2000), "Unemployment"])
da[,"Unemployment"]

