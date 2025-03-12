library(tidyverse)

1+1
1 == 1

all.equal(0.1+0.2,
          0.3)
x<- 0.025
y <- x^2
y

z <- "Hello wold"

a <- c(1,2,3)

b <- seq(2, 3, by=0.5)

ls()

ls(all.name = TRUE)

# rm(list = ls())

.h <- "this is hidden"
ls(all.name = TRUE)



rm(list = ls())


x <- list(list(list(list())))
str(x)

is.recursive(x)

c(1, FALSE)
c("a", 1)
c(list(1), "a")
c(TRUE, 1L)
is.vector(list(1,2,3))

is.numeric(c(1L,2L,3L))
as.numeric(c(1L,2L,3L))
typeof(as.numeric(c(1L,2L,3L)))
typeof(list(1,2,3))


"one" < 2
1 == "1"

"two" > 3
as.numeric("one")
as.numeric("two")

NA > 100

y <- c(5.4, 6.2, 7.1, 4.8, 7.5, 6.2)
names(y) <- c('a', 'b', 'c', 'a', 'e', 'a')
y[c("a","c")]
y[c(T,T,F)]
y[c(T,T,F,F,T,T)]
y[y==6.2]
x[all.equal(y, 6.2)]

y[-(2:4)]
y[-2:4]
y[-2:4]
-y[2:4]
y[names(y)] == "a"
  
  