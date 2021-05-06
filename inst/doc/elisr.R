## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(elisr) ; data(trust) ; head(trust)

## ----echo=TRUE----------------------------------------------------------------
# `(foo <- baz)`: assign and print in one step
(msdf <-  disjoint(df = trust, mrit_min = 0.55))

## -----------------------------------------------------------------------------
msdf

## -----------------------------------------------------------------------------
msdf

## -----------------------------------------------------------------------------
msdf

## -----------------------------------------------------------------------------
msdf

## -----------------------------------------------------------------------------
msdf

## -----------------------------------------------------------------------------
msdf

## -----------------------------------------------------------------------------
# Pint output to n decimal places (default=2)
print(msdf, digits = 3)

## -----------------------------------------------------------------------------
(mosdf <- overlap(msdf, mrit_min = 0.4))

## -----------------------------------------------------------------------------
lapply(list(msdf = mosdf$scl_1, mosdf = mosdf$scl_2), colnames)

## -----------------------------------------------------------------------------
msdf <- overlap(
  disjoint(df = trust, mrit_min = 0.55),
  mrit_min = 0.4
)

## -----------------------------------------------------------------------------
ntrust <- within(trust, uni <- 8 - uni)

## -----------------------------------------------------------------------------
(d <- disjoint(ntrust, mrit_min = 0.55, negative_too = TRUE, sclvals = c(1, 7)))

## -----------------------------------------------------------------------------
overlap(d,
        # Note: overlap() remembers the scaling values from disjoint()
        mrit_min = 0.4, negative_too = TRUE, sclvals = c(1, 7)
)


## -----------------------------------------------------------------------------
ntrust <- within(trust, tv <- 8 - tv)

overlap(
  disjoint(ntrust, mrit_min = 0.55, negative_too = TRUE, sclvals = c(1, 7)),
  mrit_min = 0.4, negative_too = TRUE)

## -----------------------------------------------------------------------------
frag <- trust[c("tv", "bundtag", "fccourt")]
pre <- disjoint(df = frag, mrit_min = 0)
# overlap() uses this attribute to build the counterpart
attributes(pre)$df <- trust
(msdf <- overlap(pre, mrit_min = 0.4))

## -----------------------------------------------------------------------------
(msdf <- overlap(
        disjoint(ntrust, mrit_min = 0.55, negative_too = TRUE,
                 sclvals = c(1, 7)),
        # Note: overlap() remembers the scaling values from disjoint()
        mrit_min = 0.4, negative_too = TRUE
))

## -----------------------------------------------------------------------------
head(msdf$scl_1)

## -----------------------------------------------------------------------------
class(msdf$scl_1)

## -----------------------------------------------------------------------------
if (requireNamespace("psych", quietly = TRUE)) {
  cat("`psych` is present. Ready to go!\n")
} else {
  cat("Please install the psych package to continue, type:\n")
  message("install.packages('psych')")
}

