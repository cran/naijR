## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----original-map-------------------------------------------------------------
library(naijR)

map_ng()

## ----outline-map--------------------------------------------------------------
map_ng(NULL)

## ----south-west, warning=FALSE------------------------------------------------
map_ng(states("sw"), show.text = TRUE, col = 4)

## ---- singleton, warning=FALSE------------------------------------------------
kk <- "Kebbi"
map_ng(kk, col = 6, fill = TRUE, title = paste(kk, "State"))

## ----dud-dataframe------------------------------------------------------------
# Create variables
ss <- states()
numStates <- length(ss)
vv <- sample(LETTERS[1:5], numStates, TRUE)

# Create a data frame and view top rows
dd <- data.frame(state = ss, var = vv, stringsAsFactors = FALSE)
head(dd)

## ----df-approach--------------------------------------------------------------
map_ng(data = dd, x = var)

## ----vec-approach-------------------------------------------------------------
map_ng(region = ss, x = vv, col = "red")

## ----error-map, error=TRUE----------------------------------------------------
map_ng(region = ss, x = var)

## ----numeric-choropleth-------------------------------------------------------
nn <- runif(numStates, max = 100)  # random real numbers ranging from 0 - 100
bb <- c(0, 40, 60, 100)

map_ng(region = ss, x = nn, breaks = bb, col = 'YlOrRd')

## ----good-legend--------------------------------------------------------------
map_ng(
  region = ss,
  x = nn,
  breaks = bb,
  categories = c("Low", "Medium", "High"),
  col = 3L
)

## ----pointmap-----------------------------------------------------------------
x <- c(3.000, 4.000, 6.000, 5.993, 5.444, 6.345, 5.744)
y <- c(8.000, 9.000, 9.300, 10.432, 8.472, 6.889, 9.654)

map_ng(NULL, x = x, y = y)

## ----out-of-bounds, error=TRUE------------------------------------------------
map_ng("Kwara", x = x, y = y)

