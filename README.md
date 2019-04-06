---
  title: "README"
output: md_document
---

  

# Craft Beer Name Generator

Makes dumb fake beer names


```r
pacman::p_load(dplyr)
source(here::here("generator.R"))

data.frame(n = 1:20) %>%
  group_by(n) %>%
  mutate(Beer = purrr::map_chr(n, ~generate_name(actual_beers = F))) %>%
  knitr::kable(format = "markdown")
```



|  n|Beer                                                                           |
|--:|:------------------------------------------------------------------------------|
|  1|Shed Thirsty Crow's American Pale American Pale Ale Common                     |
|  2|Boys Bacchus Beacon Ale                                                        |
|  3|Arms Hop's Pavlova Ale                                                         |
|  4|James Kolsch Refreshing Egland                                                 |
|  5|Birds Henrys Howl Summer Australian                                            |
|  6|Goat's Griffin Breakwater Cloud Catcher Ipa                                    |
|  7|Green's Grizz Harvest Jasper Ale Pale Ale                                      |
|  8|Dainton La Sirene's Wild Yak Xpa Beer                                          |
|  9|Chi Cho Mane's Newtowner Fifty Lashes Pacific Ale Egland Ipa                   |
| 10|Rabbit Bridge Road's Attack Killer Hops Double Hefeweizen                      |
| 11|Boatrocker 4 Pines Lager Lay Day Ipa                                           |
| 12|Bacchus Mountain Goat Creatures Ipa Pale                                       |
| 13|Nation's Hop Thief 8 Ipa                                                       |
| 14|Nelson's Mimas Butcher Mornington Mimas Butcher Mornington Mimas Gose          |
| 15|Mismatch's Mast Hornet Beer                                                    |
| 16|James Squire Kaiju Pact's Ale Pirate Life Helles                               |
| 17|Hopco Tas Pirate's Boatrocker Ramjet 2017 3 Quarter Time Vanilla Malt American |
| 18|Modus Operandi Fortitude Nail Balter Cricketers India Pale Ale Ale             |
| 19|Ridge's Beer Peach Melba Pavlova Beer                                          |
| 20|Akasha Feral Mornington's Hopsmith Hornet Season Ipa                           |
