
# env vars -----

# general -----
options(

    # > warnings & errors -----
    # check.bounds = TRUE,           # [FALSE] if true, warning produced e.g. when x <- 1:3; x[5] <- 6.
    warn = 1,                      # [] warnings: >=2 = as errors, 1 = as they occur, 0 = after function returns, -ve = ignore
    warnPartialMatchAttr   = TRUE, # [FALSE] if true, warns if partial matching is used in argument matching
    warnPartialMatchDollar = TRUE, # [FALSE] if true, warns if partial matching is used in extracting attributes via attr
    # warnPartialMatchArgs   = TRUE, # [FALSE] if true, causes annoying warnings that crash package install and restart: Warning in seq.default(along = x) : partial argument match of 'along' to 'along.with'

    # > printing -----
    digits = 7,       # [7] controls the number of significant digits to print (1 to 22)
    max.print = 1000, # [99999] limit the amount of information that is printed
    papersize = "a4",
    # scipen = 0,       # [0] don't use in .Rprofile as affects coercion of numeric to character
    width = 100       # [80] console width

)

# dplyr -----
options(
    dplyr.show_progress = TRUE  # [] should lengthy operations such as do() show a progress bar?
)

# ggplot2 -----
# ggplot2.continuous.col
# ggplot2.continuous.fill

# knitr -----
options(
    knitr.table.format = "html", # [] so that default kable output is html
    knitr.kable.NA = ''          # [] to hide NA values
    # knitr.graphics.auto_pdf # latex only, used in knitr::include_graphics
    # knitr.purl.inline
    # knitr.bib.prefix
    # knitr.package.foo
)

# markdown -----
# markdown.extensions
# markdown.HTML.options
# markdown.HTML.stylesheet

# parallel -----
options(
    mc.cores = parallel::detectCores() - 1
)

# pillar -----
options(
    pillar.bold = FALSE,        # [] bold font, e.g. for column headers?
    pillar.subtle = TRUE,       # [] subtle style, e.g. for insignificant digits?
    pillar.neg = TRUE,          # [] highlight negative numbers?
    pillar.sigfig = 3,          # [] num signif digits printed and highlighted. Set the pillar.subtle option to FALSE to turn off highlighting of significant digits.
    pillar.min_title_chars = 15 # [] min num characters for the column title, default: 15. Column titles may be truncated up to that width to save horizontal space. Set to Inf to turn off truncation of column titles.
)

# readr -----
# readr.show_progress

# reticulate -----
# reticulate.repl.hook
# reticulate.repl.initialize
# reticulate.repl.teardown

# rmarkdown -----
# rmarkdown.df_print

# shiny -----
# shiny.launch.browser

# stats -----
# options(
#     na.action = na.omit # [na.omit] can also have na.fail na.pass
# )

# tibble -----
options(
    tibble.print_max = 20,      # [] max num rows printed (e.g. Inf to print all rows)
    tibble.print_min = 10,      # [] min num rows printed
    tibble.width = NULL,        # [NULL] output width
    tibble.max_extra_cols = 100 # [] num extra cols printed in reduced form
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
    # usethis.quiet
)

# utils -----
options(
    install.packages.check.source = "yes", # ["yes"] "yes" or "no"
    install.packages.compile.from.source = "interactive", # ["interactive"] "interactive", "never" or "always"
    pkgType = .Platform$pkgType,
    repos = c(CRAN = "https://cran.rstudio.com")
)

# tz -----
if(Sys.getenv("TZ") == "") Sys.setenv("TZ" = Sys.timezone())
if(Sys.getenv("TZ") == "") Sys.setenv("TZ" = "Europe/London")
if(interactive()){
    message(format(Sys.time(), tz = Sys.getenv("TZ"), usetz = TRUE))
}

# system & user ----
if(interactive()){
    message(utils::sessionInfo()[[4]])
    message(Sys.info()["user"])
}

# r version -----
if(interactive()){
    if(requireNamespace("oddments", quietly = TRUE)){
        try(oddments::check_r_version(check_for_updates = FALSE), TRUE)
        try(oddments::check_rstudio_version(check_for_updates = FALSE), TRUE)
    }
}

# pkg updates -----
if(interactive()){
    if(requireNamespace("oddments", quietly = TRUE)){
        try(oddments::pkg_updates(), TRUE)
    }else{
        suppressMessages({
            if(requireNamespace("tidyverse", quietly = TRUE)){
                tidyverse::tidyverse_update()
            }
        })
    }
}

# messges -----
# if(interactive()){
#     try(suppressWarnings({
#         writeLines(readLines("~/.Rprofile_image.txt"))
#     }), TRUE)
# }

