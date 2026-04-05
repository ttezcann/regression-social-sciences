# Load GSS data----
temp <- tempfile(fileext = ".dta")
download.file("https://raw.githubusercontent.com/ttezcann/regression-social-sciences/main/data/gss.dta", temp, mode = "wb")
gss <- haven::read_dta(temp)
invisible(capture.output(suppressMessages(suppressWarnings(
  source(url("https://raw.githubusercontent.com/ttezcann/regression-social-sciences/main/scripts/0_relabel.R"))
))))
