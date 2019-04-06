Craft Beer Name Generator
================

Makes dumb fake beer names

``` r
pacman::p_load(dplyr)
source(here::here("generator.R"))

data.frame(n = 1:20) %>%
  group_by(n) %>%
  mutate(Beer = purrr::map_chr(n, ~generate_name(actual_beers = T))) %>%
  knitr::kable(format = "markdown")
```

<table>
<colgroup>
<col width="3%" />
<col width="96%" />
</colgroup>
<thead>
<tr class="header">
<th align="right">n</th>
<th align="left">Beer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">1</td>
<td align="left">Cricketers Arms Pants Pale Lager</td>
</tr>
<tr class="even">
<td align="right">2</td>
<td align="left">Goat Birds Sick's Shed Californicator German Pilsner</td>
</tr>
<tr class="odd">
<td align="right">3</td>
<td align="left">Hawkers Throwback Valley Saison/Farmhouse Ale</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">Philter's Killer Hops Sour</td>
</tr>
<tr class="odd">
<td align="right">5</td>
<td align="left">Usa's Ipa Ipa Windjammer Blonde Ale</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">2's Noisy Minor Admiral Rogers</td>
</tr>
<tr class="odd">
<td align="right">7</td>
<td align="left">Pact Moon Dog's Half Mast Hornet Ipa Ipa Pale Lager</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">Monkey's Green Coast Ipa Specialty Beer</td>
</tr>
<tr class="odd">
<td align="right">9</td>
<td align="left">Mornington's Beer Peach Melba Pavlova Cream Pale Kellerbier</td>
</tr>
<tr class="even">
<td align="right">10</td>
<td align="left">Akasha's Ipa Irish Red Ale</td>
</tr>
<tr class="odd">
<td align="right">11</td>
<td align="left">Grave Coopers Bridge Road Capital's Killer Hops Double Sunset Kolsch Refreshing Ale International Pale Ale</td>
</tr>
<tr class="even">
<td align="right">12</td>
<td align="left">Feral's Strong Pale English Brown Ale</td>
</tr>
<tr class="odd">
<td align="right">13</td>
<td align="left">Coconspirators Modus Operandi's Milk Stout Time Vanilla Malt Sparkling Ale</td>
</tr>
<tr class="even">
<td align="right">14</td>
<td align="left">Pact Moon's Fifty Lashes Pacific Ale Red IPA</td>
</tr>
<tr class="odd">
<td align="right">15</td>
<td align="left">Hawkers Green Beacon Moon's Days Fat Specialty</td>
</tr>
<tr class="even">
<td align="right">16</td>
<td align="left">Dainton's Killer Hops American Lager</td>
</tr>
<tr class="odd">
<td align="right">17</td>
<td align="left">3's Round 5 Beer American Pale ale</td>
</tr>
<tr class="even">
<td align="right">18</td>
<td align="left">Colonial's Porter Evil Eye Tenant Noisy Gueuze</td>
</tr>
<tr class="odd">
<td align="right">19</td>
<td align="left">Wayward Shed Thirsty Crow's Lil American Brown Ale</td>
</tr>
<tr class="even">
<td align="right">20</td>
<td align="left">Hop Nation James Squire Kaiju's Metal Disco Elsie Milk New England Rye IPA</td>
</tr>
</tbody>
</table>
