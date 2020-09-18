library(plumber)
library(rstudioapi)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))


# 'plumber.R' is the location of the file shown above
pr("hello.R") %>%
  pr_run(port=8000)

rstudioapi::getActiveDocumentContext()$path
