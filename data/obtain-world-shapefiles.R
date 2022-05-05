## Obtained maps from http://www.naturalearthdata.com/downloads/50m-cultural-vectors/
download.file(url = "https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip",
              destfile = "data/world-shape-files.zip")
unzip("data/world-shape-files.zip", exdir = "data/world-shape-files")
unlink("data/world-shape-files.zip")
