% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paleocar.R
\name{paleocar}
\alias{paleocar}
\title{Fit PaleoCAR models to a RasterBrick of predictands, and generate prediction and uncertainty RasterBricks.}
\usage{
paleocar(
  chronologies,
  predictands,
  calibration.years,
  prediction.years = NULL,
  label,
  out.dir = "./OUTPUT/",
  force.redo = F,
  verbose = F,
  ...
)
}
\arguments{
\item{chronologies}{An ITRDB object, as in from FedData::get_itrdb.}

\item{predictands}{A RasterBrick or RasterStack of the numeric predictand (response) variable.}

\item{calibration.years}{An integer vector of years corresponding to the layers in the \code{predictands} brick.}

\item{prediction.years}{An optional integer vector of years for the reconstruction.
If missing, defaults to the total years present in \code{chronologies}.}

\item{label}{A character label for the reconstruction, for saving.}

\item{out.dir}{The directory to which output is to be saved.}

\item{force.redo}{Logical, should all computations be re-computed?}

\item{verbose}{Logical, display status messages during run.}

\item{...}{Further arguments to be passed to other functions.}
}
\value{
A named list containing
\itemize{
  \item{\code{models}  The PaleoCAR models, as computed by \code{\link{paleocar_models}}.}
  \item{\code{predictions}  The PaleoCAR reconstruction, as computed by \code{\link{predict_paleocar_models}}.}
}
}
\description{
This is a wrapper function to the four primary methods in the PaleoCAR package, specifically for
processing predictands held in a RasterBrick.
}
