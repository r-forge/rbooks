\name{clt}
\alias{clt}
\title{Demonstration of the Central Limit Theorem}
\description{
This is a fairly simple demonstration of the central limit theorem, aimed at a single user.
}
\usage{
clt(overwrite = FALSE)
}
\details{
  \item{overwrite}{By default, the function will use any version of the course notes it finds in the working directory.   Setting overwrite = TRUE will copy a version from the package}
}
\value{
  Nothing is returned from this function, it's main use is the side-effect of starting a browser with an R-book on the Central Limit Theorem.   It tends to throw out large numbers of graph files in the working directory (that's a work in progress) and also throws out data files into the working directory.
}
\references{There will be a lot of references added soon}
\author{Paul Hewson}
\note{This work has been funded by an MSOR grant}

\examples{
clt()


}

\keyword{CLT}

