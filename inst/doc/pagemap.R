## ----setup, echo=FALSE, message=FALSE, warning=FALSE, results='asis'----------
if (!knitr::is_html_output(excludes = "markdown")) {
  knitr::opts_chunk$set(eval = FALSE)
  logo_path <- "./vignettes/pagemap.png"
  cat("# pagemapR")
} else {
  library(devtools)
  install_github('swsoyee/pagemapR', quiet = TRUE)
  logo_path <- "./pagemap.png"
}

## ----logo, echo=FALSE, results='asis', eval=TRUE------------------------------
cat(
  sprintf(
    "<img src='%s' width='180' align='right' style='max-width:50%%;margin-left:20px;'>",
    logo_path
  )
)

## ----installation, eval=FALSE-------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github('swsoyee/pagemapR')

## ----usage, eval=FALSE--------------------------------------------------------
#  pagemap::pagemap(id = "mini_map")

## ----box_style, eval=FALSE----------------------------------------------------
#  pagemap::pagemap(id = "mini_map",
#                   box_style = list(left = "5px", top = "10px"))

## ----customize_pagemap--------------------------------------------------------
pagemap::pagemap(
  id = "mini_map",
  styles = list(
    'h1,h2,a,code' = 'rgba(0,0,0,0.10)',
    'img' = 'rgba(0, 0, 0, 0.08)',
    'pre' = 'rgba(0,0,0,0.04)'
  )
)

