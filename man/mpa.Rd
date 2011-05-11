\name{mpa}
\alias{mpa}
\alias{contar.si}
\alias{reemplazar.si}
\title{CoWords method}
\description{
Performs the CoWords Method}
\usage{
mpa(E, tmax=7, palabras=NULL)  
contar.si(x,n)
reemplazar.si(x, n, p)
}
\arguments{
  \item{E}{The matrix of associations between the keywords.}
  \item{tmax}{Maximum size of each group.}
  \item{palabras}{Vector containing the names of each of your keywords.}
  \item{x}{Numeric vector.}
  \item{n}{Scalar.}
  \item{p}{Scalar.}
}
\details{
 mpa function executes the associated words method from 
 the association matrix E, and the maximum group size, tmax. 
 Function contar.si counts the number of times the scalar n appears in a vector n. 
 The function reemplazar.si searches for values equal to n and replaces them with p in a vector x.
}
\value{
 Function mpa creates a list with the next components:
 \item{Clases}{A vector that identifies the group of which every key word is associated. 
 If a value of 0 drops out means that the keyword in the particular position was not classified}
 \item{Nombres}{The vector which specifies the names of each of the groups.}
 \item{Resumen}{Matrix that contains the size, density and centrality of each group.}
}

\author{ Daniel Rodriguez \email{dhrodriguezt@unal.edu.co}
 Campo Elias Pardo \email{cepardot@unal.edu.co}
       }

\references{
Courtial, J.P. (1990), Introduction  a la scientom\'etrie, Anthropos - Econ\'omica, Paris. 
}
\examples{
#revista <- leer.mpa("revista.txt",encoding="latin1")
data(revista)
mat <- matriz.mpa(revista, fmin=3, cmin=1)
clas <- mpa(mat$Matriza,10,mat$Palabras)
clas
}
\keyword{multivariate}

