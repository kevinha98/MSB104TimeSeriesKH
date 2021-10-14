## code to prepare `DATASET` dataset goes here
hw_iris <- iris
usethis::use_data(hw_iris, overwrite = TRUE)
usethis::use_vignette("Covid19TimeSeriesAnalysis")

library(COVID19)
library(dplyr)
library(lubridate)
library(zoo)
library(ggplot)
all_data <- COVID19::covid19(verbose = F)
sel_cou <- c('NOR','ITA','SWE','GBR','ISR','FIN','CZE','ESP','USA','CAN','SVK','IND')
COVID19 <- all_data %>% dplyr::filter(id%in%sel_cou) %>%
  #### Datering
  dplyr::mutate(year=as.factor(lubridate::year(date))) %>%
  dplyr::select(id,date,confirmed,deaths,hosp,year,population) %>%
  dplyr::mutate(c_deaths=deaths-dplyr::lag(deaths)) %>%
  dplyr::mutate(ma_deaths=round(rollmean(c_deaths,k=7, fill=NA)),digits=4) %>%
  dplyr::mutate(ma_deaths_perc=(ma_deaths/population)*100000)
usethis::use_data(COVID19, overwrite = TRUE)

#' @export

