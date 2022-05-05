fluidPage(
  tags$head(tags$style('.selectize-dropdown {z-index: 10000}')),
  selectInput("selected_continent",
              label = "Select a continent",
              choices = continent_values),
  leafletOutput("world_choropleth")
)