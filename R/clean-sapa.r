cleanSAPA <- function(x, vintage=NULL, max.age, min.age) {
    x <- getSAPA(x, vintage=vintage)
    x <- uniqueSAPA(x)
    x <- dropSAPA(x, min.age=min.age, max.age=max.age)
    return(x)
  }