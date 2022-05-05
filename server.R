


function(input, output, session){
  
  output$world_choropleth <- renderLeaflet({
    
    world_sf %>% 
      leaflet() %>% 
      addPolygons(color = "white",
                  weight = 1,
                  fillColor = "forestgreen",
                  fillOpacity = 0.8) %>% 
      addPolygons(group = ~CONTINENT,
                  fillColor = "red",
                  weight = 1,
                  fillOpacity = 1,
                  color = "black")
    
  })
  
  observeEvent(input$selected_continent,
               {
                
                 continents_to_highlight <- input$selected_continent
                 
                 continents_not_to_highlight <- continent_values[!continent_values %in% input$selected_continent]
                 
                 print(continents_not_to_highlight)
                 
                 leafletProxy("world_choropleth") %>%
                   showGroup(group = continents_to_highlight) %>% 
                   hideGroup(group = continents_not_to_highlight)
                 
               })
  
}