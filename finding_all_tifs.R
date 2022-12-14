library(rlist)
library(raster)
library(tidyr)
library(tidyverse)
library(dplyr)
library(gdalUtilities)
library(files)
library(landscapemetrics)
library(stringr)
searchFold = "D:/Data/Cara/Working/For_Frag/all_frag_runs"
all_tifs <- file.info(list.files(searchFold, pattern = '[.]tif$', full.names = T, recursive = T))
%>%
  separate(1, c("Drive", "F1", "F2", "F3","F4", "F5", "F6", "F7", "F8", "file.name"), sep = "/")
head(all_tifs)


lf <- function(x){#can I input file path here instead of sf?
  tifs <- file.info(list.files(x, pattern = '[.]tif$', full.names = T, recursive = T))
  tifs_tib <- as_tibble(tifs)
}
  separate(tifs_tib, 1, c("Drive", "F1", "F2", "F3","F4", "F5", "F6", "F7", "F8", "file.name"), sep = "/")
  return(tifs_tib)
}

lf(searchFold)
