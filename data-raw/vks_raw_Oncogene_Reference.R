# prepare, create and optimize oncogene_reference.rda
oncogene_reference = read.csv("./data-raw/NCG_oncogene_signature.csv", stringsAsFactors = FALSE)
usethis::use_data(oncogene_reference, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/oncogene_reference.rda", compress = "auto")
rm(oncogene_reference)
