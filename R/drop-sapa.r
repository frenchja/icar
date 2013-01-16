dropSAPA <- function(x, max.age, min.age) {
    if (missing(min.age))
      min.age <- 13
    if (missing(max.age))
      max.age <- 91
    x <- subset(x, x[,"age"]>min.age)
    x <- subset(x, x[,"age"]<max.age)
    x <- subset(x, x[,"no_code"]<1)
    return(x)
  }
