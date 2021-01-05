# prepare, create and optimize GRCh38_ref.rda
GRCh38G = read.delim("./data-raw/GRCh38G.p13.txt", header = FALSE, stringsAsFactors = FALSE, skip = 1, col.names = c("ENSG", "Gene", "Chr", "Start", "End", "Source", "Type"))
GRCh38G = GRCh38G[, 1:5]
chr_len_GRCh38G.p13 = read.csv("./data-raw/chr_len_GRCh38G.p13.csv", stringsAsFactors = FALSE)
chr_len_H = chr_len_GRCh38G.p13[, 2]
names(chr_len_H) = chr_len_GRCh38G.p13[, 1]
rm(chr_len_GRCh38G.p13)
GRCh38T = read.delim("./data-raw/GRCh38T.p13.txt", header = FALSE, stringsAsFactors = FALSE, skip = 1, col.names = c("ENST", "Transcript", "ENSG", "Gene"))
GRCh38_ref = list("GRCh38G" = GRCh38G, "chr_len_H" = chr_len_H, "GRCh38T" = GRCh38T)
usethis::use_data(GRCh38_ref, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/GRCh38_ref.rda", compress = "auto")
rm(GRCh38_ref, GRCh38G, GRCh38T, chr_len_H)

# prepare, create and optimize GRCh37_ref.rda
GRCh37G = read.delim("./data-raw/GRCh37G.p13.txt", header = FALSE, stringsAsFactors = FALSE, skip = 1, col.names = c("ENSG", "Gene", "Chr", "Start", "End", "Source", "Type"))
GRCh37G = GRCh37G[, 1:5]
chr_len_GRCh37G.p13 = read.csv("./data-raw/chr_len_GRCh37G.p13.csv", stringsAsFactors = FALSE)
chr_len_H = chr_len_GRCh37G.p13[, 2]
names(chr_len_H) = chr_len_GRCh37G.p13[, 1]
rm(chr_len_GRCh37G.p13)
GRCh37T = read.delim("./data-raw/GRCh37T.p13.txt", header = FALSE, stringsAsFactors = FALSE, skip = 1, col.names = c("ENST", "Transcript", "ENSG", "Gene"))
GRCh37_ref = list("GRCh37G" = GRCh37G, "chr_len_H" = chr_len_H, "GRCh37T" = GRCh37T)
usethis::use_data(GRCh37_ref, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/GRCh37_ref.rda", compress = "auto")
rm(GRCh37_ref, GRCh37G, GRCh37T, chr_len_H)

# prepare, create and optimize GRCm38_ref.rda
GRCm38G = read.delim("./data-raw/GRCm38G.p6.txt", header = FALSE, stringsAsFactors = FALSE, skip = 1, col.names = c("ENSG", "Gene", "Chr", "Start", "End"))
GRCm38G[, 3] = paste0("chr", GRCm38G[, 3])
GRCm38G = plyr::arrange(GRCm38G, ENSG)
dups = duplicated(GRCm38G[, 2])
GRCm38G = subset(GRCm38G, !dups)
rm(dups)
chr_len_GRCm38G.p6 = read.csv("./data-raw/chr_len_GRCm38G.p6.csv", stringsAsFactors = FALSE)
chr_len_M = chr_len_GRCm38G.p6[, 2]
names(chr_len_M) = chr_len_GRCm38G.p6[, 1]
rm(chr_len_GRCm38G.p6)
GRCm38T = read.delim("./data-raw/GRCm38T.p6.txt", header = FALSE, stringsAsFactors = FALSE, skip = 1, col.names = c("ENST", "Transcript", "ENSG", "Gene"))
GRCm38_ref = list("GRCm38G" = GRCm38G, "chr_len_M" = chr_len_M, "GRCm38T" = GRCm38T)
usethis::use_data(GRCm38_ref, internal = FALSE, overwrite = TRUE)
tools::resaveRdaFiles("./data/GRCm38_ref.rda", compress = "auto")
rm(GRCm38_ref, GRCm38G, GRCm38T, chr_len_M)
