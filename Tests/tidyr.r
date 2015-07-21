# tidyr
require(tidyr)
require(dplyr)
messy <- data.frame(
  name = c("Wilbur", "Petunia", "Gregory"),
  a = c(67, 80, 64),
  b = c(56, 90, 50)
  )
messy
messy %>%
  gather(drug, heartrate, a:b)
#===
set.seed(10)
messy <- data.frame(
  id = 1:4, 
  trt = sample(rep(c("control", "treatment"), each = 2)),
  work.T1 = runif(4),
  home.T1 = runif(4),
  work.T2 = runif(4),
  home.T2 = runif(4)
)
messy
tidier <- messy %>%
  gather(key, time, -id, -trt)
tidier %>% (head)
tidier
# Now split---
tidy <- tidier %>%
  separate(key, into = c("location", "time"), sep = "\\.")
tidy %>% head(8)
#----Hadley
pew <- read.csv("Data/pew.csv", stringsAsFactors = FALSE)
head(pew)
pew %>%
  gather(income, frequency, -religion)%>%
  head(4)
billboard <- read.csv("Data/billboard.csv", stringsAsFactors = FALSE)
head(billboard)
billboard2 <- billboard %>% 
  gather(week, rank, wk1:wk76, na.rm = TRUE)
head(billboard2)
billboard3 <- billboard2 %>%
  mutate(
    week = extract_numeric(week),
    date = as.Date(date.entered) + 7 * (week - 1)) %>%
  select(-date.entered)
head(billboard3)

head(billboard3 %>% arrange(artist, track, week))
head(billboard3 %>% arrange(date, rank))
