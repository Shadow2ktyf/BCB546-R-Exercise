library(tidyverse)


dvst <- read_csv("https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-08-r/Dataset_S1.txt") %>% 
  mutate(diversity = Pi / (10*1000), cent = (start >= 25800000 & end <= 29700000)) %>% 
  rename(percent.GC = `%GC`, total.SNPs = `total SNPs`, total.Bases = `total Bases`, reference.Bases = `reference Bases`)

dvst <- mutate(dvst, position = (end + start) / 2)

ggplot(data = dvst) + geom_point(mapping=aes(x=position, y=diversity))
ggplot(data = dvst) + geom_point(mapping = aes(x=position, y=diversity, color=cent))
ggplot(data = dvst) + geom_point(mapping = aes(x=position, y=diversity, color=depth))

ggplot(data = dvst) + geom_density(mapping = aes(x=diversity), fill="blue")
ggplot(data = dvst) + geom_density(mapping = aes(x=diversity, fill=cent), alpha=0.4)

ggplot(data = dvst, mapping = aes(x=depth, y=total.SNPs)) + geom_point(alpha=0.1) + geom_smooth()
