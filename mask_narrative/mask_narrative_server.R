server <- function(input, output) {
    addResourcePath("myhtmlfiles", '/Users/mjs379/Documents/GitHub/WebsiteBuilding/mask_narrative/')
  
  getPage1 <- function() {
    return(tags$iframe(src = "myhtmlfiles/fig1.html", 
                       width="100%", 
                       height="2000",
                       scrolling="no", 
                       seamless="seamless", 
                       frameBorder="0"))
    }
      
  
  output$fig1 <- renderUI({getPage1()})
  
  getPage2 <- function() {
    return(tags$iframe(src = "myhtmlfiles/fig2.html", 
                       width="100%", 
                       height="1500",
                       scrolling="no", 
                       seamless="seamless", 
                       frameBorder="0"))
  }
  
  
  output$fig2 <- renderUI({getPage2()})
  
  getPage_map1 <- function() {
    return(tags$iframe(src = "myhtmlfiles/deltamap.html", 
                       width="100%", 
                       height="600",
                       scrolling="no", 
                       seamless="seamless", 
                       frameBorder="0"))
  }
  
  output$map1 <- renderUI({getPage_map1()})
  
  getPage_map2 <- function() {
    return(tags$iframe(src = "myhtmlfiles/omicronmap.html", 
                       width="100%", 
                       height="600",
                       scrolling="no", 
                       seamless="seamless", 
                       frameBorder="0"))
  }
  
  output$map2 <- renderUI({getPage_map2()})
}