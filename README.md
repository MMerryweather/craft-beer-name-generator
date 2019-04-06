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
  mutate(Beer = purrr::map_chr(n, ~generate_name(actual_beers = T))) %>%
  knitr::kable(format = "markdown")
```

<table>
<colgroup>
<col width="4%" />
<col width="95%" />
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
<td align="left">Blackmans 2 Brothers Creatures Inquest Farmhouse British Golden Ale</td>
</tr>
<tr class="even">
<td align="right">2</td>
<td align="left">Otherside Philter's Fog American Lager</td>
</tr>
<tr class="odd">
<td align="right">3</td>
<td align="left">Modus Operandi's Quarter American Amber Ale</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">Stone Wood Grifter's Modus Operandi American IPA</td>
</tr>
<tr class="odd">
<td align="right">5</td>
<td align="left">Pines Ackbar Red Brown 8bit New England IPA</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">Beacon's Double Ipa Squish Specialty IPA</td>
</tr>
<tr class="odd">
<td align="right">7</td>
<td align="left">Australian Beer Company Australian's Mate Bout Feral</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">Peninsula's Operandi Cascadian Wood-Aged Beer</td>
</tr>
<tr class="odd">
<td align="right">9</td>
<td align="left">Shed Feral James Squire's Juicy Lil Neipa Blood Mized Fermentation Sour Beer</td>
</tr>
<tr class="even">
<td align="right">10</td>
<td align="left">Stockade's Pale Pale Cheeky American Pale ale</td>
</tr>
<tr class="odd">
<td align="right">11</td>
<td align="left">Mornington's Porter Evil Eye Tenant Noisy Minor Admiral Pale Lager</td>
</tr>
<tr class="even">
<td align="right">12</td>
<td align="left">Beer Company's Neipa Lupulin Fog English Brown Ale</td>
</tr>
<tr class="odd">
<td align="right">13</td>
<td align="left">Stone Wood's Pale Ale Ipa Future Ale American Pale Ale</td>
</tr>
<tr class="even">
<td align="right">14</td>
<td align="left">Coconspirators Mornington Peninsula's Mast Hornet Ipa Mosaic Sonic Prayer Sprocket Double IPA</td>
</tr>
<tr class="odd">
<td align="right">15</td>
<td align="left">Pony's Ale Barley Griffin Breakwater American Brown Ale</td>
</tr>
<tr class="even">
<td align="right">16</td>
<td align="left">Crow Stone Wood Grifter's Door Australian Gose</td>
</tr>
<tr class="odd">
<td align="right">17</td>
<td align="left">Feral Mornington's Coast Ipa Winter Seasonal Beer</td>
</tr>
<tr class="even">
<td align="right">18</td>
<td align="left">Gage's Fifty Lashes Pacific Ale Beerhall Benstpoke Crankshaft Gose</td>
</tr>
<tr class="odd">
<td align="right">19</td>
<td align="left">Creatures Ale Bright Ale Sour Miss Pinky Passion Puss International Pale Lager</td>
</tr>
<tr class="even">
<td align="right">20</td>
<td align="left">Lies Hop Nation's Ipa Obsession Pale Ale</td>
</tr>
</tbody>
</table>
