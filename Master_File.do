**** Master Do File ****
**** Author: Olowookere Oluwatosin Olawale

clear all // To begin fresh 
set more off // Oppose to set more in which stata only runs after command, set more off allows unrestricted code running and prevent showing results


** First Data Cleaning **
do "C:\Users\simona\Downloads\Sample_Stata_Code_Olowookere_O\Sub_Do_Files\100_First_Dofiles.do"


** Variables Labeling **
do "C:\Users\simona\Downloads\Sample_Stata_Code_Olowookere_O\Sub_Do_Files\101_Var_labelling.do"


** Employment and Income Indices **
do "C:\Users\simona\Downloads\Sample_Stata_Code_Olowookere_O\Sub_Do_Files\201_Emp_income_index.do"


** Graphs for Visualising Employment and Income **
do "C:\Users\simona\Downloads\Sample_Stata_Code_Olowookere_O\Sub_Do_Files\202_Data_Exploration.do"



// Save my work 
save "C:\Users\simona\Desktop\Simona_Projects_by_Oluwatosin\Data_Work_in_Progress\WIP_DATA.dta", replace
