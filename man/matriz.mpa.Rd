\name{matriz.mpa}
\alias{matriz.mpa}
\title{Calculation of co-occurrences matrix and matrix associations}
\description{
Calculates the co-occurrences matrix and the matrix associations from the 
resulting object of the leer.mpa function.}
\usage{
matriz.mpa(leer.mpa, sep.ind="ind0", sep.pal="/", fmin=3, cmin=3)
}
\arguments{
  \item{leer.mpa}{Resulting vector from the leer.mpa function.}
  \item{sep.ind}{Individuals separator by default is "ind0".}
  \item{sep.pal}{Word separator by default is "/"}
  \item{fmin}{Minimal appearance frequency of key words inside the corpus.}
  \item{cmin}{Minimal co-occurrence between words.}
}
\details{
Individuals separator sep.ind must be the same for all individuals in the corpus, just like the sep.pal. 
The function eliminates key words with lower frequency than fmin and eliminates co-occurrences under cmin. 
}
\value{
 A list that contains: 
  \item{Matriza}{Associations matrix.}
  \item{Matrizc}{Co-occurrence matrix.}
  \item{Palabras}{Vector from the different words that appears in the corpus (dictionary).}
  \item{tl}{Lexical table}
}
\note{This function uses created steps inside the ttda.segmentation y ttda.forms.frame functions, of the ttda library.}
\author{ Daniel Rodr\'iguez \email{dhrodriguezt@unal.edu.co}
       }
\references{
Courtial, J.P. (1990), Introduction  a la Scientom\'etrie, Anthropos - Econ\'omica, Paris.
}
\examples{
data(revista)
mat <- matriz.mpa(revista, fmin=3, cmin=1)
mat$Matriza
mat$Matrizc
diag(mat$Matrizc)
}
\keyword{multivariate}
