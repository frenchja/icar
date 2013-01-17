\name{cleanSAPA}
\alias{cleanSAPA}
\title{
Function to clean SAPA data}
\description{
This function integrates downloads and clean data from the 
Synthetic Aperture Personality Assessment (i.e., SAPA), 
an online Personality assessment run by the Personality, Motivation, 
and Cognition Lab.}
\usage{
cleanSAPA(x, vintage = NULL, max.age, min.age)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{vintage}{
%%     ~~Describe \code{vintage} here~~
}
  \item{max.age}{
Maximum desired participant age.  
}
  \item{min.age}{
Minimum desired participant age.}
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
data.frame containing SAPA participants
}
\references{
Condon, D. M. & Revelle, W. (in manuscript). The International Cognitive Ability Resource: Development and initial validation of a public-domain measure.

French, J. A., Condon, D. M., & Revelle, W. (2013). icar: International Cognitive Ability Resource. R package version 0.1. http://github.com/frenchja/icar/}
\author{
%%  ~~who you are~~
}
\note{
See http://frenchja.github.com/icar/
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
function (x, vintage = NULL, max.age, min.age) 
{
    x <- getSAPA(x, vintage = vintage)
    x <- uniqueSAPA(x)
    x <- dropSAPA(x, min.age = min.age, max.age = max.age)
    return(x)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
