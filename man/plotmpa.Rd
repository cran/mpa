\name{plotmpa}
\alias{plotmpa}
\title{Network group's internal associations}
\description{
Draws the association's network within the words belonging to a group.}
\usage{
plotmpa(clase, E, mpa, fpond= 10, tit= NULL, tam.fuente=1)
}
\arguments{
  \item{clase}{The number of the type or group from which you want to see the network.}
  \item{E}{Matrix of associations between the keywords.}
  \item{mpa}{Resulting object of the mpa function.}
  \item{fpond}{Weighting for the links between network nodes.}
  \item{tit}{Title}
  \item{tam.fuente}{Size font.}
}
\details{
The keywords are represented in nodes. The joints between them are the level of association between the keywords. 
The red node is the word whose sum of internal associations is greater. 
}
\value{
 A graph network that shows the structure of association between the words that belong to a given group.
}
\note{This function is an adaptation of the previous function plot.network from the package network.}
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
clas
plotmpa(1,mat$Matriza,clas)
plotmpa(6,mat$Matriza,clas)
}
\keyword{multivariate}

