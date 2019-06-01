
# general -----
options(
    # packages
    repos = c(CRAN = "https://cran.rstudio.com"),
    pkgType = .Platform$pkgType,
    # warn on partial matches
    warnPartialMatchAttr   = TRUE,
    warnPartialMatchDollar = TRUE,
    #warnPartialMatchArgs   = TRUE, # causes annoying warnings that crash package install and restart: Warning in seq.default(along = x) : partial argument match of 'along' to 'along.with'
    # printing to console
    max.print = 1000, # limit the amount of information that is printed
    # miscellaneous
    digits = 7,
    papersize = "a4",
    scipen = 0,
    warn = 0,
    width = 100
)

# dplyr -----
options(
    dplyr.show_progress = TRUE  # should lengthy operations such as do() show a progress bar?
)

# knitr -----
options(
    knitr.table.format = "html", # so that default kable output is html
    knitr.kable.NA = ''          # to hide NA values
)

# pillar -----
options(
    pillar.bold = FALSE,        # Use bold font, e.g. for column headers?
    pillar.subtle = TRUE,       # Use subtle style, e.g. for insignificant digits?
    pillar.neg = TRUE,          # Highlight negative numbers?
    pillar.sigfig = 3,          # The number of significant digits that will be printed and highlighted. Set the pillar.subtle option to FALSE to turn off highlighting of significant digits.
    pillar.min_title_chars = 15 # The minimum number of characters for the column title, default: 15. Column titles may be truncated up to that width to save horizontal space. Set to Inf to turn off truncation of column titles.
)

# tibble -----
options(
    tibble.print_max = 20,      # Row number threshold: Maximum number of rows printed. Set to Inf to always print all rows.
    tibble.print_min = 10,      # Number of rows printed if row number threshold is exceeded.
    tibble.width = NULL,        # Output width. Default: NULL (use width option).
    tibble.max_extra_cols = 100 # Number of extra columns printed in reduced form.
)

# usethis -----
options(
    usethis.full_name = "Darren Kidney",
    usethis.description = list(
        `Authors@R` = 'person("Darren", "Kidney", email = "darrenkidney@yahoo.co.uk", role = c("aut", "cre"))',
        License = "MIT + file LICENSE",
        Version = "0.0.0.9000"
    ),
    usethis.protocol  = "https"
)

# set time zone -----
Sys.setenv("HOME" = "/Users/darrenkidney")
if(Sys.getenv("TZ") == "") Sys.setenv("TZ" = Sys.timezone())
if(Sys.getenv("TZ") == "") Sys.setenv("TZ" = "Europe/London")
if(interactive()){
    message(format(Sys.time(), tz = Sys.getenv("TZ"), usetz = TRUE))
}

# check R version -----
if(interactive()){
    if(requireNamespace("oddments", quietly = TRUE)){
        try(oddments::check_r_version(check_for_updates = FALSE), TRUE)
        try(oddments::check_rstudio_version(check_for_updates = FALSE), TRUE)
    }
}

# check for packages updates -----
if(interactive()){
    if(requireNamespace("oddments", quietly = TRUE)){
        try(print(oddments::pkg_updates()), TRUE)
    }else{
        suppressMessages({
            if(requireNamespace("tidyverse", quietly = TRUE)){
                tidyverse::tidyverse_update()
            }
        })
    }
}
