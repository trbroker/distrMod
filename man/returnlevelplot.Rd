\name{returnlevelplot}
\docType{methods}
\title{Methods for Function returnlevelplot in Package `distrMod'}
\usage{
returnlevelplot(x, y, ...)
\S4method{returnlevelplot}{ANY,UnivariateDistribution}(x,y,
    n = length(x), withIdLine = TRUE,
    withConf = TRUE, withConf.pw  = withConf, withConf.sim = withConf,
    plot.it = TRUE, datax = FALSE, MaxOrPOT = c("Max","POT"), npy = 365,
    threshold = if(is(y,"GPareto")) NA else 0,    
    xlab = deparse(substitute(x)),
    ylab = deparse(substitute(y)),
    main = "",
    ..., width = 10, height = 5.5, withSweave = getdistrOption("withSweave"),
    mfColRow = TRUE, n.CI = n, withLab = FALSE, lab.pts = NULL, which.lbs = NULL,
    which.Order = NULL, order.traf = NULL, 
    col.IdL = "red", lty.IdL = 2, lwd.IdL = 2, alpha.CI = .95,
    exact.pCI = (n<100), exact.sCI = (n<100), nosym.pCI = FALSE,
    col.pCI = "orange", lty.pCI = 3, lwd.pCI = 2, pch.pCI = par("pch"),
    cex.pCI = par("cex"),
    col.sCI = "tomato2", lty.sCI = 4, lwd.sCI = 2, pch.sCI = par("pch"),
    cex.sCI = par("cex"), added.points.CI = TRUE,
    cex.pch = par("cex"), col.pch = par("col"),
    cex.lbl = par("cex"), col.lbl = par("col"), adj.lbl = NULL,
    alpha.trsp = NA, jit.fac = 0,  jit.tol = .Machine$double.eps,
    check.NotInSupport = TRUE, col.NotInSupport = "red",
    with.legend = TRUE, legend.bg = "white",
    legend.pos = "topleft", legend.cex = 0.8,
    legend.pref = "", legend.postf = "",  legend.alpha = alpha.CI,
    debug = FALSE, withSubst = TRUE)
\S4method{returnlevelplot}{ANY,ProbFamily}(x, y,
   n = length(x), withIdLine = TRUE, withConf = TRUE,
   withConf.pw  = withConf,  withConf.sim = withConf,
    plot.it = TRUE, xlab = deparse(substitute(x)),
    ylab = deparse(substitute(y)), ...)
\S4method{returnlevelplot}{ANY,Estimate}(x, y,
   n = length(x), withIdLine = TRUE, withConf = TRUE,
   withConf.pw  = withConf,  withConf.sim = withConf,
    plot.it = TRUE, xlab = deparse(substitute(x)),
    ylab = deparse(substitute(y)), ...)

}
\alias{returnlevelplot}
\alias{returnlevelplot-methods}
\alias{returnlevelplot,ANY,ProbFamily-method}
\alias{returnlevelplot,ANY,UnivariateDistribution-method}
\alias{returnlevelplot,ANY,Estimate-method}

\arguments{
\item{x}{data to be checked for compatibility with distribution/model \code{y}.}
\item{y}{object of class \code{"UnivariateDistribution"} or of
class \code{"ProbFamily"}.}
\item{n}{numeric; assumed sample size (by default length of \code{x}).}
\item{withIdLine}{logical; shall line \code{y = x} be plotted in?}
\item{withConf}{logical; shall confidence lines be plotted?}
\item{withConf.pw}{logical; shall pointwise confidence lines be plotted?}
\item{withConf.sim}{logical; shall simultaneous confidence lines be plotted?}
\item{plot.it}{logical; shall be plotted at all (inherited from
\code{\link[stats:qqnorm]{returnlevelplot}})?}
\item{datax}{logical; shall data be plotted on x-axis?}
\item{MaxOrPOT}{a character string specifying whether it is used for
                block maxima ("Max") or for points over threshold ("POT");
                must be one of "Max" (default) or "POT".
                You can specify just the initial letter.}
\item{npy}{number of observations per year/block.}
\item{threshold}{numerical; in case of \code{MaxOrPot=="POT"}, this captures
                 the (removed) threshold. If it is \code{NA}, it is reconstructed
                 from the distribution \code{y}.}
\item{main}{Main title}
\item{xlab}{x-label}
\item{ylab}{y-label}
\item{\dots}{further parameters for method \code{returnlevelplot} with signature
\code{ANY,UnivariateDistribution} or with function \code{plot}}
\item{width}{width (in inches) of the graphics device opened}
\item{height}{height (in inches) of the graphics device opened}
\item{withSweave}{logical: if \code{TRUE} (for working with \command{Sweave})
        no extra device is opened and height/width are not set}
\item{mfColRow}{shall default partition in panels be used --- defaults to \code{TRUE}}
\item{n.CI}{numeric; number of points to be used for confidence interval}
\item{withLab}{logical; shall observation labels be plotted in?}
\item{lab.pts}{character or \code{NULL}; observation labels to be used}
\item{which.lbs}{integer or \code{NULL}; which observations shall be labelled}
\item{which.Order}{integer or \code{NULL}; which of the ordered (remaining)
observations shall be labelled}
\item{order.traf}{function or \code{NULL}; an optional trafo by which the
observations are ordered (as order(trafo(obs)).}
\item{col.IdL}{color for the identity line}
\item{lty.IdL}{line type for the identity line}
\item{lwd.IdL}{line width for the identity line}
\item{alpha.CI}{confidence level}
\item{exact.pCI}{logical; shall pointwise CIs be determined with exact
Binomial distribution?}
\item{exact.sCI}{logical; shall simultaneous CIs be determined with
exact Kolmogorov distribution?}
\item{nosym.pCI}{logical; shall we use (shortest) asymmetric CIs?}
\item{col.pCI}{color for the pointwise CI}
\item{lty.pCI}{line type for the pointwise CI}
\item{lwd.pCI}{line width for the pointwise CI}
\item{pch.pCI}{symbol for points (for discrete mass points) in pointwise CI}
\item{cex.pCI}{magnification factor for points (for discrete mass points) in
pointwise CI}
\item{col.sCI}{color for the simultaneous CI}
\item{lty.sCI}{line type for the simultaneous CI}
\item{lwd.sCI}{line width for the simultaneous CI}
\item{pch.sCI}{symbol for points (for discrete mass points) in simultaneous CI}
\item{cex.sCI}{magnification factor for points (for discrete mass points) in
simultaneous CI}
\item{added.points.CI}{logical; should CIs be plotted through additional points
      (and not only through data points)? }
\item{cex.pch}{magnification factor for the plotted symbols}
\item{col.pch}{color for the plotted symbols}
\item{cex.lbl}{magnification factor for the plotted observation labels}
\item{col.lbl}{color for the plotted observation labels}
\item{adj.lbl}{adj parameter for the plotted observation labels}
\item{alpha.trsp}{alpha transparency to be added ex post to colors
        \code{col.pch} and \code{col.lbl}; if one-dim and NA all colors are
        left unchanged. Otherwise, with usual recycling rules \code{alpha.trsp}
        gets shorted/prolongated to length the data-symbols to be plotted.
        Coordinates of this vector \code{alpha.trsp} with NA are left unchanged,
        while for the remaining ones, the alpha channel in rgb space is set
        to the respective coordinate value of \code{alpha.trsp}. The non-NA
        entries must be integers in [0,255] (0 invisible, 255 opaque).}
\item{jit.fac}{jittering factor used for discrete distributions.}
\item{jit.tol}{threshold for jittering: if distance between points is smaller
               than \code{jit.tol}, points are considered replicates.}
\item{check.NotInSupport}{logical; shall we check if all \code{x}-quantiles lie
in \code{support(y)}?}
\item{col.NotInSupport}{logical; if preceding check \code{TRUE} color of
\code{x}-quantiles if not in \code{support(y)}}
\item{with.legend}{logical; shall a legend be plotted?}
\item{legend.bg}{background color for the legend}
\item{legend.pos}{position for the legend}
\item{legend.cex}{magnification factor for the legend}
\item{legend.pref}{character to be prepended to legend text}
\item{legend.postf}{character to be appended to legend text}
\item{legend.alpha}{nominal coverage probability}
\item{debug}{logical; if \code{TRUE} additional output to debug confidence bounds.}
\item{withSubst}{logical; if \code{TRUE} (default) pattern substitution for
      titles and axis lables is used; otherwise no substitution is used. }
}
\description{
  We generalize the return level plot (which is one of the diagnostical
  plots provided package \pkg{ismev}, e.g., in function
  \code{\link[ismev:gev.diag]{gev.diag}}), see also Coles' book below,  to
  be applicable to distribution and probability model objects. In this context,
  \code{returnlevelplot} produces a rescaled QQ plot of data (argument \code{x}) 
  against a (model) distribution.
   Graphical parameters may be given as arguments to \code{returnlevelplot}.
   In all title and label arguments, if \code{withSubst} is \code{TRUE},
  the following patterns are substituted:
\describe{
\item{\code{"\%C"}}{class of argument \code{x}}
\item{\code{"\%A"}}{deparsed argument \code{x}}
\item{\code{"\%D"}}{time/date-string when the plot was generated}
}

}
\value{
    As for function \code{\link[stats:qqnorm]{returnlevelplot}} from package \pkg{stats}: a
  list with components
\item{x}{The x coordinates of the points that were/would be plotted}
  \item{y}{The corresponding quantiles of the second distribution,
           \emph{including \code{\link{NA}}s}.}
  \item{crit}{A matrix with the lower and upper confidence bounds
               (computed by \code{qqbounds}).}
  \item{err}{logical vector of length 2.}
  (elements \code{crit} and \code{err} are taken from the return
   value(s) of \code{qqbounds}).
}
\details{
\describe{
\item{returnlevelplot}{\code{signature(x = "ANY", y = "UnivariateDistribution")}:
produces a return level plot of a dataset \code{x} against the theoretical
quantiles of distribution \code{y}.}
\item{returnlevelplot}{\code{signature(x = "ANY", y = "ProbFamily")}:
produces a return level plot of a dataset \code{x} against the theoretical
quantiles of the model distribution of model \code{y}. Passed through
the \code{\dots} argument, all arguments valid for
\code{signature(x = "ANY", y = "UnivariateDistribution")}
are also valid for this signature.}
\item{returnlevelplot}{\code{signature(x = "ANY", y = "Estimate")}:
produces a return level plot of a dataset \code{x} against the theoretical
quantiles of the model distribution of the model that can be reconstructed
from the estimator \code{y}; more specifically, it tries to get hand at the
argument \code{'ParamFamily'} of the esimator's call; if this is available,
internally this model is shifted to the estimated parameter by a call to
\code{modifyModel}, and then this shifted model is used in a call to the
\code{(x = "ANY", y = "UnivariateDistribution")}-method. Passed through
the \code{\dots} argument, all arguments valid for
\code{signature(x = "ANY", y = "UnivariateDistribution")}
are also valid for this signature.}

}
}
\note{
 The confidence bands given in our version of the return level plot differ
 from the ones given in package \pkg{ismev}. We use non-parametric bands,
 hence also allow for non-parametric deviances from the model, whereas in
 in package \pkg{ismev} they are based on profiling, hence only check for
 variability within the parametric class.
}
\references{
  ismev: An   Introduction to Statistical Modeling of Extreme Values. R package
  version 1.39. http://CRAN.R-project.org/package=ismev; original S functions
  written by Janet E. Heffernan with R port and R documentation provided by
  Alec G. Stephenson. (2012).

  Coles, S. (2001). \emph{An introduction
  to statistical modeling of extreme values.} London: Springer.
}
\author{
  Peter Ruckdeschel \email{peter.ruckdeschel@uni-oldenburg.de}
}
\seealso{
  \code{\link[stats:qqnorm]{qqplot}} from package \pkg{stats} -- the standard QQ plot
  function,  \code{\link[distr]{qqplot}} from package \pkg{distr} for
  comparisons of distributions, \code{qqplot} from this package and
  \code{\link{qqbounds}}, used by \code{returnlevelplot} to produce confidence
   intervals.
}
\examples{
returnlevelplot(r(Norm(15,sqrt(30)))(40), Chisq(df=15))
### more could be seen after installing RobExtremes and ismev
#
}
\keyword{hplot}
\keyword{distribution}
