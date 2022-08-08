#' InvestCEE
#' This function provides access to the list of available countries stored in a central repository
#' @export
#' @examples
#' countryOptions("unemployment") or countryOptions()
countryOptions = function(concept = NULL) {
  url = "https://raw.githubusercontent.com/jwfrench/RInvCEE/main/Data%20codes%20for%20Github.csv"
  x = getURL(url)
  data = as.data.frame(read.csv(text = x, header = TRUE))
  names(data)[1] = "countryName"
  
  if (!is.null(concept)) {
    if (concept %in% names(data)) {
      data = filter(data, data[[concept]] != "#N/A")
      data$isoCode
    } else {
      data$isoCode
    }
  } else {
    data$isoCode
  }
}
