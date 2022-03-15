calanus-nwa
================

# Cross-border Calanus model for the Northwest Atlantic

### Bounding box for study

     xmin  xmax  ymin  ymax 
    -77.0 -42.5  36.5  56.7 

### Packages

Developed for this effort…

-   [ecomon](https://github.com/BigelowLab/ecomon)

-   [azmpcfin](https://github.com/BigelowLab/azmpcfin)

From other projects…

-   [azmpdata](https://github.com/casaultb/azmpdata)

-   [multivaR](https://github.com/EOGrady21/multivaR)

### Simple usage

``` r
# start in the `scripts` directory
orig_dir <- getwd()
setwd("scripts")
source("setup.R")
setwd(orig_dir)
x <- merge_calanus()
glimpse(x)
```

    ## Rows: 32,189
    ## Columns: 9
    ## $ src       <chr> "azmp", "azmp", "azmp", "azmp", "azmp", "azmp", "azmp", "azm…
    ## $ id        <chr> "TSI_TSI3", "TSI_TSI5", "TSI_TSI6", "TESL_TESL1", "TESL_TESL…
    ## $ date      <date> 2000-12-03, 2000-12-03, 2000-12-03, 2000-12-04, 2000-12-04,…
    ## $ season    <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, …
    ## $ month     <dbl> 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, …
    ## $ longitude <dbl> -66.22983, -66.27050, -66.27500, -68.48500, -68.54700, -68.5…
    ## $ latitude  <dbl> 49.55117, 49.88333, 50.05333, 48.57583, 48.62750, 48.66800, …
    ## $ depth     <dbl> 340, 276, 121, 38, 225, 331, 339, 341, 149, 342, 235, 377, 3…
    ## $ abundance <dbl> 41259.7282, 16234.4696, 2491.0934, 543.0964, 12042.0195, 132…
