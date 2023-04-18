d <- read.csv('pubs.csv',header=T)

library(ggplot2)

qplot(factor(year),data=d,geom="bar",fill=factor(cat),xlab="Year",ylab="Count") + 
  scale_fill_brewer(name="Subject Area",palette="Set3") + ggtitle("") + 
  theme(plot.background=element_rect(fill = "transparent",colour = NA))
ggsave("pubs.jpg",width=10,height=3)