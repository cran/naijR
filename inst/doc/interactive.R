## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- error = TRUE------------------------------------------------------------
library(naijR)

fix_region("Legos Island")

## -----------------------------------------------------------------------------
fix_region(c("Legos Island", "Amuwo-Odofin"))

## ---- error = TRUE------------------------------------------------------------
fix_region(c("Legos Island", "Amuwo Odofin"))

## -----------------------------------------------------------------------------
adamawa <- c("Fufore", "Demsa", "Machika", "Fufure", "Ganye", "Hong")
if (!all(is_lga(adamawa)))
  adamawa <- fix_region(adamawa)


## ---- eval=FALSE--------------------------------------------------------------
#  adamawa <- fix_region(lgas(adamawa), interactive = TRUE)

## -----------------------------------------------------------------------------
all(is_lga(adamawa))

