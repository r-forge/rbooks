\name{cltimg}
\alias{cltimg}
\docType{data}
\title{Central Limit Theorem Workbook: img source}
\description{
This is an internal R-represenation of the math notation which can be written
to the users current working directory
}
\usage{data(cltimg)}
\format{
When written, this file contains 24 .jpeg files (converted from latex using latex2html, and from png to jpeg using imagemagick
}

\source{
Based on materials used by Julian Stander
}
\references{
Perhaps some references need to be added
}
\examples{
##data(cltimg)
##for (i in 1:24){
##eval(parse(text = paste("writeJpeg(\"cltimg", i, ".jpeg\", cltimg[[", i, "]])", sep = "")))
##}
}
\keyword{datasets}
