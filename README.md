# ECBS-5241-Final-Project

## The aim of the project:
To find the effect of health expenditure on infant mortality in the countries of Europe & Central Asia in 2016.
   
## Instructions
-The main script is called "main-do-file.do". This is the only script that needs
to be run in STATA, all other scripts are referenced there and were saved in the "code" folder. The data used in all scripts is in the folders "raw" and "derived" of the folder "data". Graph and regression tables are created inside the "output" folder.

-GDP dataset was analyzed in Python, the work is shown in the "Python-work.ipynb" file. There are some comments in the markdown cells.

-IMPORTANT: Before running the main script, please open main-do-file.do and change line 2 (shown below) to match the directory where you stored the files in your computer
   global dir_main "C:\Users\exile\Documents\final_project" 
   
## Data:
1. Data file: Infant-Mortality.csv (Source: World Development Indicators (web))
2. Data file: GDP-Worldbank.csv (Source: The World Bank (web))

## Results
The results from the OLS model showed that increased health expenditure reduced infant mortality at 1% level of significance. An increase in total health expenditure per capita was negatively associated with infant mortality. A 1% increase in total health expenditure per capita was found to be associated with a reduction in infant mortality of approximately 0.475%.

