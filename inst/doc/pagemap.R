## ----setup, echo=FALSE, message=FALSE, warning=FALSE, results='asis'----------
if (!knitr::is_html_output(excludes = "markdown")) {
  knitr::opts_chunk$set(eval = FALSE)
  logo_path <- "./vignettes/pagemap.png"
  cat("# pagemapR")
} else {
  install.packages(
    "pagemap",
    repos = "http://cran.us.r-project.org",
    quiet = TRUE
  )
  logo_path <- "./pagemap.png"
}

## ----logo, echo=FALSE, results='asis', eval=TRUE------------------------------
cat(
  sprintf(
    "<img src='%s' width='150' align='right'>",
    logo_path
  )
)

## ----installation cran, eval=FALSE--------------------------------------------
#  install.packages("pagemap")

## ----installation, eval=FALSE-------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("swsoyee/pagemapR")

## ----usage, eval=FALSE--------------------------------------------------------
#  library(pagemap)
#  pagemap()

## ----box_style, eval=FALSE----------------------------------------------------
#  pagemap(
#    id = "mini_map",
#    box_style = list(left = "5px", top = "10px")
#  )

## ----loading pacakge, echo=FALSE----------------------------------------------
library(pagemap)

## ----customize_pagemap--------------------------------------------------------
pagemap(
  id = "mini_map",
  styles = list(
    "h1,h2,a,code" = "rgba(0, 0, 0, 0.10)",
    "img" = "rgba(0, 0, 0, 0.08)",
    "pre" = "rgba(0, 0, 0, 0.04)"
  )
)

## ----shiny demo, eval=FALSE---------------------------------------------------
#  if (interactive()) {
#    shinyApp(
#      ui = fluidPage(pagemapOutput("pagemap")),
#      server = function(input, output) {
#        output$pagemap <- renderPagemap(pagemap())
#      }
#    )
#  }

