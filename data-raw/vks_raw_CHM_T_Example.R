# prepare, create and optimize transcript_selection.rda
transcript_selection = read.csv("./data-raw/transcript_selection.csv", stringsAsFactors = FALSE)
usethis::use_data(transcript_selection, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/transcript_selection.rda", compress = "auto")
rm(transcript_selection)

# prepare, create and optimize transcript_commonName.rda
transcript_commonName = read.csv("./data-raw/transcript_commonName.csv", stringsAsFactors = FALSE)
Encoding(transcript_commonName$Common_Name) = "UTF-8"
usethis::use_data(transcript_commonName, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/transcript_commonName.rda", compress = "auto")
rm(transcript_commonName)
