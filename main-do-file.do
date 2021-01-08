*CHANGE THIS PART FOR YOUR COMPUTER: Setup main directory
global dir_main "C:\Users\exile\Documents\final_project"

*Go to the working directory
cd "${dir_main}"

*Run the Do Files
do "${dir_main}\code\fix-dataset1.do"
do "${dir_main}\code\fix-dataset2.do"
do "${dir_main}\code\merge-datasets.do"
do "${dir_main}\code\fix-final-dataset.do"
do "${dir_main}\code\analysis.do"
