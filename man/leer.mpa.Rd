\name{leer.mpa}
\alias{leer.mpa}
\title{Reading corpus}
\description{
Reads lines of text files in R.}
\usage{
leer.mpa(textfile = "", encoding = "unknown")
}
\arguments{
  \item{textfile}{The file path where the corpus is located}
 \item{encoding}{encoding to be assumed for input strings}
}
\details{
The corpus file must be a standard text file, which generally uses "/" to 
separate each letter and "ind0" to separate individuals, however, 
these parameters can be different.
}
\value{
 A vector containing the text lines "textfile".
}
\note{This function is an adaptation of the ttda.get.text function from de ttda library. }
\author{ Daniel Rodr\'iguez \email{dhrodriguezt@unal.edu.co}
       }
\examples{
#revista <- leer.mpa("revista,txt",encoding="latin1")
data(revista)
revista
}
\keyword{multivariate}

