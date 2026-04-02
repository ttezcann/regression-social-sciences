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
