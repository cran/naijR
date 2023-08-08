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
chars <- c("Legos Island", "Amuwo Odofin")
fix_region(chars)

# Create an `lgas` object
lgs <- lgas(c("Legos Island", "Amuwo Odofin"))
fix_region(lgs)

## -----------------------------------------------------------------------------
fix_region(lgas(c("Legos Island", "Amuwo Odofin")))

## -----------------------------------------------------------------------------
fix_region(lgas(c("Orange County", "Amuwo Odofin")))

## -----------------------------------------------------------------------------
mispelt.adamawa <- c("Fufure", "Demsa", "Machika", "Fufure", "Ganye", "Hong")

# check for misspelt LGAs and, if necessary, attempt to fix
length(mispelt.adamawa)
sum(is_lga(mispelt.adamawa))
corrected.adamawa <- fix_region(mispelt.adamawa)
sum(is_lga(corrected.adamawa))

## ---- eval=FALSE--------------------------------------------------------------
#  adamawa <- fix_region(lgas(corrected.adamawa), interactive = TRUE)

## ----manual-fix, include = FALSE----------------------------------------------
adamawa <- fix_region_manual(corrected.adamawa,
                             wrong = "Machika",
                             correct = "Michika")
adamawa

## ----confirm-fix--------------------------------------------------------------
# Confirm that the spelling mistakes have been fixed.
all(is_lga(adamawa))

## ----manual-fix---------------------------------------------------------------
adamawa <- fix_region_manual(corrected.adamawa,
                             wrong = "Machika",
                             correct = "Michika")
adamawa

