
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shinyScenarioEditor
> _shinyScenarioEditor UI for the esqlabsR package

<!-- badges: start -->
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->


## How to install?
GitHub:
```r
remotes::install_github("esqLABS/shinyScenarioEditor", force = TRUE)
```
### How to use it?

```r
library(shinyScenarioEditor)
shinyScenarioEditor::run_app()
```

## Use development version

```r
remotes::install_github("esqLABS/shinyScenarioEditor", ref = "dev", force = TRUE)
library(shinyScenarioEditor)
shinyScenarioEditor::run_app()
```

## esqlabs.handsontable

``` r
renv::install("esqLABS/esqlabs.handsontable")
```

## Installation dev

You can install the development version of shinyScenarioEditor from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("esqLABS/shinyScenarioEditor")

# install.packages("renv")
renv::restore(lockfile = 'renv.lock') # to install the packages used in the package
```

## Development

Snapshot working enviroment

``` r
source(file = 'dev/get_snapshot.R')
```


## Run dev
1. Install dependencies
```r
renv::restore(lockfile = 'renv.lock')
```

2. Run the app
```r
# Set options here
options(golem.app.prod = FALSE) # TRUE = production mode, FALSE = development mode

# Comment this if you don't want the app to be served on a random port
options(shiny.port = httpuv::randomPort())

# Detach all loaded packages and clean your environment
golem::detach_all_attached()
# rm(list=ls(all.names = TRUE))

# Document and reload your package
golem::document_and_reload()

# Run the application
run_app()
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(shinyScenarioEditor)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
