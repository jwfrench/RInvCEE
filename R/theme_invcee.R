#' Theme InvestCEE
#' This function provides the look of ggplots for InvestCEE.com
#' Based on theme_minimal, it sets font, background, legend position,
#' axis, gridlines, with blue background
#' @export
theme_invcee <- function(){
  font <- "Times"   #assign font family up front

  theme_minimal() %+replace%    #replace elements we want to change

    theme(

      ### base colors
      plot.background = element_rect(fill="aliceblue", colour=NA),
      legend.background = element_rect(fill="aliceblue", colour=NA),
      legend.key = element_rect(fill="aliceblue", colour=NA),


      #grid elements
      panel.grid.major.x = element_blank(),
      panel.grid.major.y = element_line(size = rel(0.75), color = "dodgerblue4"),    #strip major gridlines
      panel.grid.minor.x = element_blank(),    #strip minor gridlines
      panel.grid.minor.y = element_line(size = rel(0.75), color = "dodgerblue4"),
      axis.ticks = element_line(size = rel(0.95), color = "dodgerblue4"),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 24,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 1),               #raise slightly

      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 17,
        hjust = 0),               #font size

      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 13,                 #font size
        hjust = 1),               #right align

      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = 15),               #font size

      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 15),                #font size

      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 5)),

      ###### legend
      legend.position = "bottom",
      legend.text = element_text(
        family = font,
        size = 15)

    )
}
