README
================

Craft Beer Name Generator
=========================

Makes dumb fake beer names

``` r
pacman::p_load(dplyr)
source(here::here("generator.R"))

data.frame(n = 1:20) %>%
  group_by(n) %>%
  mutate(Beer = purrr::map_chr(n, ~generate_name(actual_beers = F))) %>%
  knitr::kable(format = "markdown")
```

|    n| Beer                                                   |
|----:|:-------------------------------------------------------|
|    1| Mash Dainton's Hazy Craze Jedi Double                  |
|    2| Dog Newstead's Pale Ale Growler Sour                   |
|    3| Modus Operandi White Rabbit's Ackbar Red Butcher Aged  |
|    4| Rocky Ridge Australian's Elsie Milk Stout Ale Berliner |
|    5| Company's Ipl Birds Egland                             |
|    6| Akasha's Door Australian String Super Ipa              |
|    7| 2's Gold Dark Ipa                                      |
|    8| Usa Colonial's Brown Ale Robust Porter Sweet           |
|    9| Shed Feral Mornington Peninsula's Eye Pale Ale         |
|   10| Australian Brewery Bucket Boys Bout Mized              |
|   11| Nelson Yak Ales Ipa Obsession Session Farmhouse        |
|   12| Coopers Cricketers Arms Gatherer 2017 Ipa              |
|   13| Rabbit's Ale Growler Keller Door Ipa                   |
|   14| Pirate Life Mornington Peninsula's Miss Pinky Hopped   |
|   15| Pact's Draught Juicy Banger California                 |
|   16| Pact Moon Dog's Door Beer                              |
|   17| Roads Harvest Beer                                     |
|   18| Mountain Goat Birds Sick Puppy's Coast Ipa England     |
|   19| Nation James Door Weisse                               |
|   20| Coopers Bridge's Rye Urban Pale Fruit                  |
