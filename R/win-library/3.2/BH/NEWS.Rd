\name{NEWS}
\title{News for Package \pkg{BH}}
\newcommand{\cpkg}{\href{http://CRAN.R-project.org/package=#1}{\pkg{#1}}}
\newcommand{\boost}{\href{http://www.boost.org}{\pkg{Boost}}}
\newcommand{\boostPkg}{\href{http://www.boost.org/doc/libs/release/libs/#1}{\pkg{#1}}}
\newcommand{\boostPkgTwo}{\href{http://www.boost.org/doc/libs/release/libs/#1}{\pkg{#2}}}
\newcommand{\rfticket}{\href{https://r-forge.r-project.org/tracker/index.php?func=detail&aid=#1}{#1}}

\section{Changes in version 1.55.0-3 (2015-01-04)}{
  \itemize{
    \item Added Boost Graph requested in GH ticket #9 by Dirk for RcppStreams
  }
}

\section{Changes in version 1.55.0-2 (2015-01-03)}{
  \itemize{
    \item Added Boost Fusion requested in GH ticket #7 by Dirk for RcppStreams
  }
}

\section{Changes in version 1.55.0-1 (2014-12-21)}{
  \itemize{
    \item Upgraded to Boost 1.55 once again from the Debian tarball at
    \url{https://packages.debian.org/source/sid/boost1.55} 
    \item Added Boost Geometry requested in GH ticket #5 by 'teramonagi'
  }
}

\section{Changes in version 1.54.0-5 (2014-11-09)}{
  \itemize{
    \item Added Boost Circular Buffer requested by Ben Goodrich for RStan
  }
}

\section{Changes in version 1.54.0-4 (2014-08-29)}{
  \itemize{
    \item Added Boost Any requested by Greg Jeffries for his nabo package 
  }
}

\section{Changes in version 1.54.0-3 (2014-08-03)}{
  \itemize{
    \item Added Boost Heap library which will be needed by the next
  version of \cpkg{RcppMLPACK}
  }
}

\section{Changes in version 1.54.0-2 (2014-04-14)}{
  \itemize{
    \item Bug fix to \code{lexical_cast.hpp} which now uses the test for
    INT128 which the rest of Boost uses, consistent with Boost 1.55 too.
  }
}

\section{Changes in version 1.54.0-1 (2014-04-07)}{
  \itemize{
    \item Upgraded to Boost 1.54.0
    \item Adjust build script \code{local/script/CreateBoost.sh} accordingly
    \item Renamed \code{generation_runge_kutta_cash_karp54_classic.hpp}
    to \code{generation_runge_kutta_cash_karp54_cl.hpp} to remain within
    100-character limit for \code{tar}; also adjust corresponding
    \code{#include} in \code{numeric/odeint/stepper/generation.hpp}
  }
}

\section{Changes in version 1.51.0-4 (2014-01-01)}{
  \itemize{
    \item Rewritten main package creation script to no longer scan for
    what \cpkg{bigmemory} and \cpkg{synchronicity} use, but rather
    explicitly copy over an (equivalent) list of explicitly-enumerated
    \boost libraries
    \item Repository moved from R-Forge to GitHub, scripts and layout
    adjusted accordingly
    \item Besides the implicitly expanded coverage by including the
    complete libraries, we also expanded from
    \boostPkg{math/doc/html/dist.html} to all of \boostPkg{math}.
  }
}

\section{Changes in version 1.51.0-3 (2013-10-19)}{
  \itemize{
    \item Expanded \boost coverage by adding \boost packages
    \boostPkg{spirit}, \boostPkg{foreach}, \boostPkg{algorithm},
    \boostPkg{iostreams}. 
  }
}

\section{Changes in version 1.51.0-2 (2013-07-29)}{
  \itemize{
    \item Expanded \boost coverage by adding \boost packages
    \boostPkg{random} and \boostPkg{unordered}. 
  }
}

\section{Changes in [unreleased] version 1.51.0-1 (2013-05-04)}{
  \itemize{
    \item Expanded \boost coverage by adding \boost packages \boostPkg{foreach},
    \boostPkgTwo{math/doc/html/dist.html}{statistical
      distributions}, and \boostPkg{iostreams}. This addresses,
    respectively, R-Forge issue tickets \rfticket{2527}, \rfticket{2533}
    and \rfticket{2768}). 
    \item The package can now also be used to compile CRAN package
    \cpkg{ExactNumCI} and \cpkg{rcppbugs}.
  }
}

\section{Changes in version 1.51.0-0 (2013-01-31)}{
  \itemize{
    \item First CRAN upload
    \item The package can be used to build \cpkg{bigmemory} and
    \cpkg{RcppBDT} as it already contains significant portions of Boost libraries
    algorithm, bind, concept, config, container, date_time, detail,
    exceptions, filesystem, functional, interprocess, intrusive, iterator,
    math, mpl, numeric, preprocessor, random, range, smart_ptr,
    type_traits, unordered.
  }
}

