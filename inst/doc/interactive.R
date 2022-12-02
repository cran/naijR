## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  results = 'hide'
)

## ---- error = TRUE------------------------------------------------------------
library(naijR)

fix_region("Legos Island")

## -----------------------------------------------------------------------------
fix_region(c("Legos Island", "Amuwo-Odofin"))

## ---- error = TRUE------------------------------------------------------------
fix_region(c("Legos Island", "Amuwo Odofin"))

## ---- eval = FALSE------------------------------------------------------------
#  fix_region(lgas(c("Legos Island", "Amuwo Odofin")))

## ---- eval = FALSE------------------------------------------------------------
#  fix_region(lgas(c("Orange County", "Amuwo Odofin")))

## ---- eval = 1----------------------------------------------------------------
adamawa <- c("Fufore", "Demsa", "Machika", "Fufure", "Ganye", "Hong")

# check for misspelt LGAs and, if necessary, attempt to fix
if (!all(is_lga(adamawa)))
  adamawa <- fix_region(adamawa)

## ---- include = FALSE---------------------------------------------------------
if (!all(is_lga(adamawa)))
  adamawa <- suppressMessages(fix_region(adamawa))

## ---- eval=FALSE--------------------------------------------------------------
#  adamawa <- fix_region(lgas(adamawa), interactive = TRUE)

## ----manual-fix, include=FALSE------------------------------------------------
adamawa <- fix_region_manual(adamawa, "Machika", "Michika")

## ---- results = 'markup'------------------------------------------------------
all(is_lga(adamawa))

## ----manual-fix, eval = FALSE-------------------------------------------------
#  adamawa <- fix_region_manual(adamawa, "Machika", "Michika")

