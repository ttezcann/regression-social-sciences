### Introduction to RStudio ###

# Highlight all the codes under "Install and load packages."
# Click the "Run" button in RStudio.

# This process may take 15-20 minutes, if this is the first time.

# Wait until the "Stop" sign in the console disappears and 
#    no more code is running in the console.

### ***** DO NOT CHANGE ANYTHING FROM HERE 
### ***** UNTIL "WORKING SPACE"

# Install and load packages----
while (dev.cur() > 1) dev.off()
packages <- c("corrplot", "patchwork", "Hmisc", 
              "parameters", "performance", "psych", 
              "see", "sjlabelled", "sjmisc", 
              "sjPlot", "ggpubr", "tidyverse", "gt")
for (pkg in packages) {if (!requireNamespace(pkg, quietly = TRUE)) {
  message("Installing package: ", pkg)
  install.packages(pkg, dependencies = c("Depends", "Imports"))} else {
    message("Package already installed: ", pkg)}
  (library(pkg, character.only = TRUE))}

# After all the packages are installed (no "Stop" sign, no codes running in the console),
# highlight all the codes under "Load data" 

# Click the "Run" button in RStudio.
# You should see "gss" and "key" under the "Data" part (top right)
# If not, run the codes under the "Install and load packages" and "Load GSS" again in order.


# Load data----
temp <- tempfile()
download.file("https://drive.google.com/uc?export=download&id=1mF7gMY4aU9amTgYLSVOyVQaHT_opDUbj",temp, mode = "wb")
unzip(temp, files="OrigData/2022/GSS2022.dta",exdir = "OrigData")
gss <- haven::read_dta("OrigData/OrigData/2022/GSS2022.dta")
key <- as.data.frame(get_label(gss))


# you can take notes on this script file wherever you put a hashtag (#) first.


# WORKING SPACE----
## Assignment----

frq(gss$marital, out = "v")


