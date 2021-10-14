# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' @export
hello <- function(name=NULL) {
  tekst <- paste("Hello world! My name is", name)
  print(tekst)
}
hello("Kevin")

plot19ts <- function(sel_cou=NULL,covid19df=NULL, yvar='hosp'){c_cdf <- sel_cou %>% purr::map(function(x,df=covid_sel_df){ print(x)
  out <- df %>% dplyr::filter(id==x)
  print(out)
  gout <- ggplot(out, aes(x=dayofyear(),y=hosp, color=year)) + geom_point() + geom_line() + labs(title=x,"})}

