\name{diagram.mpa}
\alias{diagram.mpa}
\title{Strategic diagram}
\description{
Draws the strategic diagram starting from the classification of key words done in the mpa function.}
\usage{
diagram.mpa(mpa, tmin=3, tit= NULL, pos=1)
}
\arguments{
  \item{mpa}{Resulting object of the mpa function.}
  \item{tmin}{Minimum group size for showing on the chart.}
  \item{tit}{Title.}
  \item{pos}{Position of the groups names in the chart.}
}
\details{
The X-axis of the diagram is the centrality of groups, the Y-axis is the density.
}
\value{
  A two-dimensional plane in which are positioned groups created by the mpa function.
}
\author{ Daniel Rodr\'iguez \email{dhrodriguezt@unal.edu.co}
       }
\references{
Charum, J. y Meyer, J. (1998), Hacer ciencia en un mundo globalizado. TM editores en coedición con Colciencias y la Facultad
de Ciencias de la Universidad Nacional de Colombia.
}
\examples{
data(revista)
mat <- matriz.mpa(revista, fmin=3, cmin=1)
clas <- mpa(mat$Matriza,10,mat$Palabras)
diagram.mpa(clas,tmin=3)
}
\keyword{multivariate}
