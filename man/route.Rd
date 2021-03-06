% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route.R
\name{route}
\alias{route}
\alias{routeQueryCheck}
\title{Grab a route from Google}
\usage{
route(from, to, mode = c("driving", "walking", "bicycling", "transit"),
  structure = c("legs", "route"), output = c("simple", "all"),
  alternatives = FALSE, units = "metric", urlonly = FALSE,
  override_limit = FALSE, ext = "com", inject = "", ...)

routeQueryCheck()
}
\arguments{
\item{from}{name of origin addresses in a data frame}

\item{to}{name of destination addresses in a data frame}

\item{mode}{driving, bicycling, walking, or transit}

\item{structure}{structure of output, "legs" or "route", see examples}

\item{output}{amount of output ("simple" or "all")}

\item{alternatives}{should more than one route be provided?}

\item{units}{"metric"}

\item{urlonly}{return only the url?}

\item{override_limit}{override the current query count}

\item{ext}{domain extension (e.g. "com", "co.nz")}

\item{inject}{character string to add to the url}

\item{...}{...}
}
\value{
a data frame (output="simple") or all of the geocoded information
  (output="all")
}
\description{
Route two locations: determine a sequence of steps (legs) between two
locations using the Google Directions API. Note: To use Google's Directions
API, you must first enable the API in the Google Cloud Platform Console. See
\code{?register_google}.
}
\examples{

\dontrun{ requires Google API key, see ?register_google

## basic usage
########################################

from <- "houston, texas"
to <- "waco, texas"

route(from, to, structure = "legs")
route(from, to, structure = "route")

route(from, to, alternatives = TRUE)


## comparison to trek
########################################
(route_df <- route(from, to, structure = "route"))
(trek_df  <-  trek(from, to, structure = "route"))

qmap("college station, texas", zoom = 8) +
  geom_path(
    aes(x = lon, y = lat),  colour = "red",
    size = 1.5, alpha = .5,
    data = route_df, lineend = "round"
  ) +
  geom_path(
    aes(x = lon, y = lat),  colour = "blue",
    size = 1.5, alpha = .5,
    data = trek_df, lineend = "round"
  )

qmap("college station, texas", zoom = 6) +
  geom_path(
    aes(x = lon, y = lat), colour = "red", size = 1.5,
    data = route_df, lineend = "round"
  )





}

}
\seealso{
\url{https://developers.google.com/maps/documentation/directions/},
\code{\link{trek}}, \code{\link{legs2route}}, \code{\link{routeQueryCheck}},
\code{\link{geom_leg}}, \code{\link{register_google}}
}
\author{
David Kahle \email{david.kahle@gmail.com}
}
