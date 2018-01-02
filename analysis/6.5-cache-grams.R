d2 <- readRDS("~/Dropbox/xmas2017-12-23/ecology-trends/data/generated/condensed-ngrams2.rds")
# feather::write_feather(d2, "data/generated/condensed-ngrams2.feather")
# d2 <- feather::read_feather("data/generated/condensed-ngrams2.feather")
db2 <- src_sqlite("data/generated/jstor2-condensed.sqlite3", create = TRUE)
copy_to(db2, d2, "ngrams", temporary = FALSE)

# d1 <- readRDS("~/Dropbox/xmas2017-12-23/ecology-trends/data/generated/condensed-ngrams1.rds")
# feather::write_feather(d1, "data/generated/condensed-ngrams1.feather")
d1 <- feather::read_feather("data/generated/condensed-ngrams1.feather")
db1 <- src_sqlite("data/generated/jstor1-condensed.sqlite3", create = TRUE)
copy_to(db1, d1, "ngrams", temporary = FALSE)