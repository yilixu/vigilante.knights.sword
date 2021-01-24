# prepare, create and optimize hkg_reference.rda
hkg_reference = read.csv("./data-raw/Cell_HKG_signature.csv", stringsAsFactors = FALSE)
usethis::use_data(hkg_reference, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/hkg_reference.rda", compress = "auto")
rm(hkg_reference)
