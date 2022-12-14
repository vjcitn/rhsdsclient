% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dataset.R
\name{HSDSDataset}
\alias{HSDSDataset}
\title{Construct an object of type HSDSDataset 
A HSDSDataset is a representation of a dataset in a HDF5 file.}
\usage{
HSDSDataset(file, path)
}
\arguments{
\item{file}{An object of type HSDSFile which hosts the dataset}

\item{path}{The complete intrafile path to the dataset}
}
\value{
An initialized object of type HSDSDataset
}
\description{
Construct an object of type HSDSDataset 
A HSDSDataset is a representation of a dataset in a HDF5 file.
}
\examples{
if (check_hsds()) {
 src <- HSDSSource('http://hsdshdflab.hdfgroup.org')
 f <- HSDSFile(src, '/shared/bioconductor/tenx_full.h5')
 d <- HSDSDataset(f, '/newassay001')
 sum(d[1,1:27998]) # note the order for bracket access, this is sum for first cell == 4046
}
}
