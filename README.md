README
================

Craft Beer Name Generator
=========================

Makes dumb fake beer names

``` r
pacman::p_load(dplyr)
source(here::here("generator.R"))

data.frame(n = 1:10) %>%
  group_by(n) %>%
  mutate(Beer = purrr::map_chr(n, ~generate_name(actual_beers = F))) %>% 
  knitr::kable(format = "markdown")
```

|    n| Beer                                                         |
|----:|:-------------------------------------------------------------|
|    1| Company's Operandi Cascadian Howl Summer Ale Gueuze          |
|    2| Coopers Cricketers Arms Hop's India Pale Pale Ale Lager Pale |
|    3| Peninsula Hawkers Fixation's Operandi Cascadian Sour         |
|    4| Usa Colonial's Grizz Harvest Beer                            |
|    5| Balter's Sparkling Ale Spearhead Heart Fermentation          |
|    6| Beacon's Sparkling Ale Session Ale                           |
|    7| Pirate's Punch Time Vanilla Malt Thickshake Ale American     |
|    8| Hopco's Hops Ipa                                             |
|    9| Dainton La's Pale Ipa                                        |
|   10| Shepherd's Double Ipa Ipa Ipa                                |
