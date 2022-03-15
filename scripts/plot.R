#' Experimental - learning to use tmap 
#' @seealso https://rpubs.com/quarcs-lab/tutorial-maps-in-r
#' 
#' @param x merged data as sf POINT object
tmap_merge <- function(x = merge_calanus(form = 'sf')){
  
  tmap::tmap_mode(mode = "view")
  
  x <- dplyr::mutate(x,
    season = c("Win", "Spr", "Sum", "Aut")[.data$season],
    month = month.abb[.data$month]
  )
  
  tmap::tm_basemap() +
    tmap::tm_shape(x) + 
    tmap::tm_symbols(size = "abundance") + 
    tmap::tm_facets(by = 'season') +
    tmap::tm_tiles("OpenTopoMap")
}