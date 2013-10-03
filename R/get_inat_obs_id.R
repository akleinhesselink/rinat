#' Get information on a specific observation
#' @param id a single id for an inaturalist observation record
#' @return a list with full details on a given record
#' @examples \dontrun{
#'   m_obs <- get_obs_inat(query="Monarch Butterfly")
#'   get_obs_inat_id(m_obs$Id[1])
#' }
#' @import httr plyr
#' @export

get_obs_inat_id <- function(id){
base_url <- "http://www.inaturalist.org/"
q_path <- paste("observations/",as.character(id),".json",sep="")
id_info <-  content(GET(base_url,path = q_path))
return(id_info)
}