da <- read.csv("Data/dota.csv", colClasses = c("Date", "character", "character", 
              NA, NA, NA, "factor", "factor", "factor", 
              "factor", "factor", "factor", "factor", "factor", "factor", 
              "integer", "factor"))
names(da) <- c("date", "email", "country", "age", "id", "ip", "type", "graphics", 
               "hardware", "happy", "how_much", "own", "hero", "AMD", "long", 
               "read", "best game") 
da$date <- as.POSIXct(da$date, format = "%Y-%m-%d %H:%M:%S")
short <- da[da$country == "US", ]
head(short)
class(short)
barplot(da)
countries <- c("TR", "US")
variable <- "hardware"
par(las = 2)
par(mfrow = c(2,1))
headline1 <- paste("Country ", countries[1], sep = "")
headline2 <- paste("Country ", countries[2], sep = "")
barplot(table(da[[variable]][which(da$country == countries[1])]), main = 
          headline1)
barplot(table(da[[variable]][which(da$country == countries[2])]), main = 
          headline2)

data <- rbind(table(da[[variable]][which(da$country == countries[1])]), 
               table(da[[variable]][which(da$country == countries[2])]))
data
chisq.test(data)
chisq.test(data)$expected
#---------this will extract country names
countries <- unique(da$country)
countries
table(da$country)
questions <- names(da)
questions
#==================================