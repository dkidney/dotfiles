pkgs <- c(
  "aws.ec2",
  "aws.ec2metadata",
  "aws.s3",
  "binom",
  "broom",
  "caret",
  "cli",
  "conflicted",
  "covr",
  "crayon",
  "dbplyr",
  "devtools",
  "dials",
  "dplyr",
  "feather",
  "forcats",
  "furrr",
  "future",
  "gbm",
  "ggplot2",
  "ggmap",
  "glmnet",
  "haven",
  "hms",
  "httr",
  "infer",
  "jsonlite",
  "keras",
  "knitr",
  "leaflet",
  "lubridate",
  "magrittr",
  "mapdata",
  "maps",
  "mapsapi",
  "maptools",
  "modelr",
  "optparse",
  "osmdata",
  "parsnip",
  "pbapply",
  "pillar",
  "plotly",
  "plumber",
  "pROC",
  "purrr",
  "randomForest",
  "raster",
  "Rcpp",
  "readr",
  "readxl",
  "recipes",
  "reprex",
  "reticulate",
  "rgdal",
  "rgeos",
  "rJava",
  "rlang",
  "rmarkdown",
  "roxygen2",
  "rsample",
  "rstudioapi",
  "rvest",
  "sf",
  "sp",
  "spelling",
  "stringr",
  "styler",
  "testthat",
  "tibble",
  "tidymodels",
  "tidyposterior",
  "tidypredict",
  "tidyr",
  "tidyselect",
  "tidytext",
  "tidyverse",
  "viridis",
  "xml2",
  "yardstick",
  character(0)
)

not_installed <- setdiff(pkgs, rownames(installed.packages()))
writeLines(not_installed)

if (length(not_installed) > 0) {
  
  not_available <- setdiff(not_installed, rownames(available.packages()))
  writeLines(not_available)
  
  available <- setdiff(not_installed, not_available)
  writeLines(available)
  
  if (0) install.packages(available)
  
  if (0) devtools::install_github("cloudyr/aws.ec2")
  
}