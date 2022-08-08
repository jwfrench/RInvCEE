#' InvestCEE
#' This function provides access to a list of available concepts stored in a central repository
#' @export
conceptOptions = function() {
  url = "https://raw.githubusercontent.com/jwfrench/RInvCEE/main/Data%20codes%20for%20Github.csv"
  x = getURL(url)
  data = as.data.frame(read.csv(text = x, header = TRUE))
  names(data)[1] = "countryName"
  
  names(data)
}