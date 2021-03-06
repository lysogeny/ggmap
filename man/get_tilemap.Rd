% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_tileserver.R
\name{get_tilemap}
\alias{get_tilemap}
\title{Get a map from a tileserver}
\usage{
get_tilemap(bbox, uri_patterns, zoom, zoom_guess = T, min_tiles = c(2,
  2), crop = T, force = F, messaging = F, ...)
}
\arguments{
\item{bbox}{bounding box for map.}

\item{uri_patterns}{URI patterns to use for getting the data. See
`format_uri` on pattern definition.}

\item{crop}{Crop image to bbox}

\item{force}{Ignore cached requests}

\item{messaging}{Verbose mode}
}
\value{
ggmap object containing the map requested.
}
\description{
Gets a map with boundaries defined by `bbox` from servers defined by
`uri_patterns` with zoom `zoom`.
}
