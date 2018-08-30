#phantich data
te <- teraoka
View(te)
library(ggplot2)
require(scales)
#a <- ggplot(te, aes(te, aes(te$Datetime, te$`Compactor move delay`, color = te$`Compactor move delay`, linetype = te$`Compactor move delay`))
#a + geom_line() + scale_y_continuous()



summary(te)
str(te)
hist(te$`Compactor move delay`)
plot(te$Datetime, te$`Compactor move delay`)
plot(te$Location, te$`Compactor move delay`)
te$Location1 <- as.character(te$Location)
#print(te$Location1)
plot(te$Location1, te$`Compactor move delay`)
ggplot(te,
       aes(y = te$`Compactor move delay`, x = te$Datetime)) +
  geom_point(col = te$Location)


ggplot(te, aes(x=te$Datetime)) + 
  geom_point(aes(y=te$`Compactor move delay`, col="move delay")) + 
  geom_point(aes(y=te$`Compactor Shutter open`, col="shutter open")) + 
  geom_point(aes(y=te$`Compactor Shutter close`, col="shutter close")) +
  labs(title="Compactor move delay", 
       y="time (ms)", x = "Datetime") +  # title and caption
  theme(panel.grid.minor = element_blank())  # turn off minor grid

# xet move delay theo location
library(dplyr)

ggplot(te, aes(x=te$Datetime)) + 
  geom_point(aes(y=te$`Compactor move delay`, col="Compactor move delay")) + 
  geom_point(aes(y=te$`Infeed Shutter open`, col="Infeed Shutter open")) + 
  geom_point(aes(y=te$`Infeed Shutter close. delay mode.`, col="Infeed Shutter close. delay mode")) +
  geom_point(aes(y=te$`Infeed Shutter close`, col="Infeed Shutter close`")) +
  geom_point(aes(y=te$`Compactor Shutter close` , col="Compactor shutter close")) + 
  geom_point(aes(y=te$`Bottle weight` , col="bottle weight")) + 
  geom_point(aes(y=te$`Weight peak/Compaction`, col="Weight peak/Compaction")) + 
  geom_point(aes(y=te$`Weight peak/Reset`, col="Weight peak/Reset")) + 
  geom_point(aes(y=te$`Cleaning time.`, col="cleaning time")) +
  facet_grid(.~te$Location)
  labs(title="Compactor move delay", 
       y="time (ms)", x = "Datetime") +  # title and caption
  theme(panel.grid.minor = element_blank())  # turn off minor grid


ggplot(data1, aes(x=data1$Datetime, y = data1$Action)) + 
  geom_point() + 
  facet_grid(rows = data1$Location)+
  labs(title="Compactor move delay")+
  theme(panel.grid.minor = element_blank())  # turn off minor grid

ggplot(te, aes(te$Datetime, te$`Compactor move delay`)) + 
  geom_point(col = te$Location)

ggplot(te, aes(te$Location, te$`Compactor move delay`)) + 
  geom_point(col = te$Location)
ggplot(te, aes(y = te$`Compactor move delay`, x = te$Datetime)) +
         geom_point(cols=te$`Bottle weight`)
hist(te$`Compactor move delay`)
