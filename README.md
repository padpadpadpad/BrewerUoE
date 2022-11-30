
# BrewerUoE

<!-- badges: start -->
<!-- badges: end -->

## Outline

This is an R package to allow the easy use of the University of Exeter
colour palettes in **base** plotting and **ggplot2**.

The colour palettes shown are taken from the University of Exeter 2022
[branding](https://brand.exeter.ac.uk/colour/).

## Issues, Bugs, and Suggestions

Issues, bugs, and suggestions can be added to the Issues tab of this
repository or please email Daniel Padfield at <d.padfield@exeter.ac.uk>.

## Installation

This package can be installed using
`remotes::install_github('padpadpadpad/BrewerUoE')`.

## Usage

All the colours are stored and can be accessed using **uoe_colours()**.
We can get the hex codes out very easily.

``` r
# load package
library(BrewerUoE)

# we can look what names are available for the colours
names(uoe_colours())
```

    ##  [1] "Exeter Night Green"     "Exeter Dark Green"      "Exeter Deep Green"     
    ##  [4] "Exeter Bright Green"    "Exeter Highlight Green" "Wood Brown"            
    ##  [7] "Tree Brown"             "Rosa Red"               "Warm Red"              
    ## [10] "Pure Purple"            "Low Purple"             "Coral Orange"          
    ## [13] "Peach"                  "Hay"                    "Sun Yellow"            
    ## [16] "Deep Sea"               "Morning Sky"            "Sunset Pink"           
    ## [19] "Light Pink"             "Heavy Black"            "Stone Grey"

``` r
# access all the colours
uoe_colours()
```

    ##     Exeter Night Green      Exeter Dark Green      Exeter Deep Green 
    ##              "#022020"              "#003c3c"              "#007d69" 
    ##    Exeter Bright Green Exeter Highlight Green             Wood Brown 
    ##              "#00c896"              "#00dca5"              "#93272c" 
    ##             Tree Brown               Rosa Red               Warm Red 
    ##              "#b46a55"              "#e60000"              "#f9423a" 
    ##            Pure Purple             Low Purple           Coral Orange 
    ##              "#702082"              "#9569be"              "#fc4c02" 
    ##                  Peach                    Hay             Sun Yellow 
    ##              "#ff7f41"              "#ffc72c"              "#f3d54e" 
    ##               Deep Sea            Morning Sky            Sunset Pink 
    ##              "#250e62"              "#69b3e7"              "#e68699" 
    ##             Light Pink            Heavy Black             Stone Grey 
    ##              "#f4c3cc"              "#000000"              "#888b8d"

``` r
# we can access only specific colours
uoe_colours(c('Exeter Dark Green', 'Exeter Deep Green', 'Exeter Highlight Green'))
```

    ##      Exeter Dark Green      Exeter Deep Green Exeter Highlight Green 
    ##              "#003c3c"              "#007d69"              "#00dca5"
