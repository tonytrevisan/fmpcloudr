% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/other.R
\name{fmpc_etf_list}
\alias{fmpc_etf_list}
\title{ETF List}
\usage{
fmpc_etf_list()
}
\value{
a data frame of ETFs
}
\description{
Provides a list of all ETFs
}
\examples{

\dontrun{

# Must set a valid API token
fmpc_set_token('FMPAPIKEY')
fmpc_etf_list()

}
}
