# Load GSS data----
temp <- tempfile(fileext = ".dta")
download.file("https://raw.githubusercontent.com/ttezcann/regression-social-sciences/main/data/gss.dta", temp, mode = "wb")
gss <- haven::read_dta(temp)
key <- as.data.frame(sjlabelled::get_label(gss))
