\name{setForwardRates}
\alias{setForwardRates}
\alias{setForwardRates,Scenarios-method}
\title{setForwardRates method}
\arguments{
  \item{ZC}{The Zero Coupon rates}

  \item{horizon}{Horizon for the calculation (in years)}
}
\description{
  Calculate and set the forward rates in a Scenarios
  object. Internaly, this method uses the
  ForwardExtraction() function.
}
\examples{
scenarios1 <- new("Scenarios")
scenarios1 <- setRiskParamsScenarios(scenarios1, vol=.1, k=2,volStock=.2, volRealEstate=.15,volDefault=.2, alpha=.1,beta=1, eta=.05,rho=.5, stock0=100,realEstate0=50, liquiditySpread0=.01, defaultSpread0=.01)
data(ZC)
scenarios1 <- setForwardRates(scenarios1, ZC, horizon=5)
}

