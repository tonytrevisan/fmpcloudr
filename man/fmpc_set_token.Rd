% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setup.R
\name{fmpc_set_token}
\alias{fmpc_set_token}
\title{Set FMP Token for all other functions}
\usage{
fmpc_set_token(APIToken = "demo", timeBtwnReq = 0.1, noBulkWarn = FALSE)
}
\arguments{
\item{APIToken}{a valid API Token from FMP Cloud}

\item{timeBtwnReq}{Time between API calls in seconds. FMP Cloud may limit API
call frequency depending on the package subscription. Use this to set a
time between API calls. The default is .1 to limit calls to no more than 10
per second.}

\item{noBulkWarn}{Boolean of TRUE or FALSE. When making large API calls, an
initial warning will be given to make sure the user wants to make bulk
requests. If the user has a FREE FMP API a bulk request may be
undesirable. Each symbol requested for many functions will be a unique
API request. Use this parameter to silence this warning.}
}
\description{
Pass a valid FMP API Token to enable all other functions
}
\details{
In order to use the FMP Cloud API, an account must be created at
\href{https://fmpcloud.io/}{FMP Cloud}. There is a free account option
that but sets a cap at 250 calls. There are different subscription levels. To
use this package, the free subscription can be used up to the limit.

Please note that most functions will make an individual API call for each
symbol passed. If running a function on multiple symbols, be aware this could
quickly hit API call limits. When running in an interactive environment, a
warning will appear asking to confirm running bulk requests. This can be
suppressed for a session using the options. You can also suppress when using
the option noBulkWarn = TRUE in this function. When running in a non
interactive environment like CRON, the bulk request will be processed without
a warning regardless.
}
\examples{
\dontrun{
# Set the FMP Token. The DEMO token has VERY limited access.
fmpc_set_token('demo', timeBtwnReq = 0, noBulkWarn = TRUE)
}
}
