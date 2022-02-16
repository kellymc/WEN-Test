# To clone to R: 
# Code, copy code, open R, go to project: version control, copy URL and check subdirectory 



# Create Sections 

#### Packages #### 

# can also use CTRL + SHIFT + R to insert heading like this:

# packages --------------------------------------------------------------------

install.packages('remotes') 
library (remotes)
# for installing packages not on cran

install_github("allisonhorst/palmerpenguins") # someones data 
library (palmerpenguins)
# to do this you use username/repository name 

install.packages('tidyverse')
library(tidyverse)


# Sesson Info -------------------------------------------------------------
sessionInfo()

# can copy/paste below into Readme
# to hashtag all at once ctrl alt c or ctrl alt and down
# this is the minimal info if someone uses your code and has issues


# output

# R version 4.0.5 (2021-03-31)
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# Running under: Windows 10 x64 (build 19042)
# 
# Matrix products: default
# 
# locale:
#   [1] LC_COLLATE=English_United States.1252 
# [2] LC_CTYPE=English_United States.1252   
# [3] LC_MONETARY=English_United States.1252
# [4] LC_NUMERIC=C                          
# [5] LC_TIME=English_United States.1252    
# 
# attached base packages:
#   [1] stats     graphics  grDevices utils     datasets 
# [6] methods   base     
# 
# other attached packages:
#   [1] forcats_0.5.1        stringr_1.4.0       
# [3] dplyr_1.0.8          purrr_0.3.4         
# [5] readr_2.1.2          tidyr_1.2.0         
# [7] tibble_3.1.6         ggplot2_3.3.5       
# [9] tidyverse_1.3.1      palmerpenguins_0.1.0
# [11] remotes_2.4.2       
# 
# loaded via a namespace (and not attached):
#   [1] tidyselect_1.1.1  haven_2.4.3      
# [3] colorspace_2.0-2  vctrs_0.3.8      
# [5] generics_0.1.2    utf8_1.2.2       
# [7] rlang_1.0.1       pkgbuild_1.3.1   
# [9] pillar_1.7.0      glue_1.6.1       
# [11] withr_2.4.3       DBI_1.1.2        
# [13] dbplyr_2.1.1      modelr_0.1.8     
# [15] readxl_1.3.1      lifecycle_1.0.1  
# [17] munsell_0.5.0     gtable_0.3.0     
# [19] cellranger_1.1.0  rvest_1.0.2      
# [21] callr_3.7.0       tzdb_0.2.0       
# [23] ps_1.6.0          curl_4.3.2       
# [25] fansi_1.0.2       broom_0.7.12     
# [27] Rcpp_1.0.8        backports_1.4.1  
# [29] scales_1.1.1      jsonlite_1.7.3   
# [31] fs_1.5.2          hms_1.1.1        
# [33] stringi_1.7.6     processx_3.5.2   
# [35] rprojroot_2.0.2   grid_4.0.5       
# [37] cli_3.1.1         tools_4.0.5      
# [39] magrittr_2.0.2    crayon_1.5.0     
# [41] pkgconfig_2.0.3   ellipsis_0.3.2   
# [43] xml2_1.3.3        prettyunits_1.1.1
# [45] reprex_2.0.1      lubridate_1.8.0  
# [47] assertthat_0.2.1  httr_1.4.2       
# [49] rstudioapi_0.13   R6_2.5.1         
# [51] compiler_4.0.5   



# Loading in Data ---------------------------------------------------------

# palmer penguin data 
# how to write csv from script and write in from folder 

data(penguins, package = "palmerpenguins")
# calling on data from package and I want penguins data 
# should see two data sets 

write.csv(penguins_raw, "Data/penguins_raw.csv", row.names = FALSE)
write.csv(penguins, "Data/penguins.csv", row.names = FALSE)
# if you have a raw data folder you could put it there 
# to check go into files and shouldsee both there 

pen.data <-read.csv("Data/penguins.csv")
# can also just drag to folder similar to any R project 


# Data inspection ---------------------------------------------------------

str(pen.data)
# tells you data type 
colnames(pen.data)

head(pen.data)
tail(pen.data)
# can also just click on it in the data pane 

# as.factor is also helpful 

# pairwise correlation plot of numeric columns 
pairs(pen.data[,c(3:6,8)])
?pairs



#
#
#
#




# Commit/clone ------------------------------------------------------------
# top right = git, commit 
# new window opens 
# include descriptive message 
# this is still just saved to machine 
# top right hand corner = push to upload to cloud
# commit more often than you push b/c want to put in little spots
# this helps have little points to revert back to 
# when you push you want to make sure its working 
# dont push broken code to repo 
# at least put a comment that it is broken 
# easier to ammend previous commit 




# GGplot figure -----------------------------------------------------------
boxplot(pen.data$body_mass_g ~ pen.data$species)
# can go in and save to output folder or ? left here 


# Zenoto & Tools ------------------------------------------------------------------


# stages = those files included in commit 
# zenoto.org 
# can link git hub to it 
# when you do that you can have an associated git-hub with code and data 
# can then create release 
# when you create a release it freezes your repository in time and can always 
# go back in time 
# always want to freeze right as published 

# OpenRefine 
# can see code and point interphase 
# data carpentry 





# Emma Hudgins Github -----------------------------------------------------


# https://github.com/emmajhudgins/WEN_github 



# Getting error trying to PUSH 
# >>> C:/Program Files/Git/bin/git.exe push origin HEAD:refs/heads/main
# To https://github.com/kellymc/WEN-Test.git
# ! [rejected]        HEAD -> main (non-fast-forward)
# error: failed to push some refs to 'https://github.com/kellymc/WEN-Test.git'
# hint: Updates were rejected because the tip of your current branch is behind
# hint: its remote counterpart. Integrate the remote changes (e.g.
#                                                             hint: 'git pull ...') before pushing again.
# hint: See the 'Note about fast-forwards' in 'git push --help' for details.


















