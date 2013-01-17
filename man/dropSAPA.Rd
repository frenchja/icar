\name{dropSAPA}
\alias{dropSAPA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Drop IDs with undesireable ages}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
dropSAPA(x, max.age, min.age)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{max.age}{
%%     ~~Describe \code{max.age} here~~
}
  \item{min.age}{
%%     ~~Describe \code{min.age} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, max.age, min.age) 
{
    if (missing(min.age)) 
        min.age <- 13
    if (missing(max.age)) 
        max.age <- 91
    x <- subset(x, x[, "age"] > min.age)
    x <- subset(x, x[, "age"] < max.age)
    x <- subset(x, x[, "no_code"] < 1)
    return(x)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
