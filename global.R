library(tidyverse)
library(sf)
library(leaflet)

world_sf <- read_sf("data/world-shape-files/ne_110m_admin_0_countries.shp")

continent_values <- world_sf %>% 
  pull(CONTINENT) %>% 
  unique()
