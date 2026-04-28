### Modeling exercises ###

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

# Run the following code to see numbers, ----
# instead of scientific notations (e.g., 2e-16)
options(digits=5, scipen=15)


# Load trashball data----
# SBS321 section 1
temp <- tempfile()
download.file("https://drive.google.com/uc?export=download&id=1dGw9X24_hq5g--MJykxu-Ex7NSgggYor",temp)
unzip(temp, files="trashball.csv",exdir = "OrigData")
unlink(temp);rm(temp)
trashballdata <- read_csv("OrigData/trashball.csv")


# WORKING SPACE----

## Assignment----

### 1) Logistic regression model (1)----

# model code
model1 <- glm(depvar ~ indepvar1 + indepvar2, data = trashballdata, family = binomial(link="logit"))
tab_model(model1, show.std = TRUE, show.ci = FALSE, collapse.se = TRUE, p.style = "stars")


# working code
model1 <- glm(depvar ~ indepvar1 + indepvar2, data = trashballdata, family = binomial(link="logit"))
tab_model(model1, show.std = TRUE, show.ci = FALSE, collapse.se = TRUE, p.style = "stars")


### 2) EXTRA CREDIT Logistic regression model (2)----

# model code
model1 <- glm(depvar ~ indepvar1 + indepvar2 + indepvar3 + indepvar4 + indepvar5, data = trashballdata, family = binomial(link="logit"))
tab_model(model1, show.std = TRUE, show.ci = FALSE, collapse.se = TRUE, p.style = "stars")


# working code
model1 <- glm(depvar ~ indepvar1 + indepvar2 + indepvar3 + indepvar4 + indepvar5, data = trashballdata, family = binomial(link="logit"))
tab_model(model1, show.std = TRUE, show.ci = FALSE, collapse.se = TRUE, p.style = "stars")


