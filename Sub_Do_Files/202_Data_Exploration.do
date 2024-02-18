** Data Exploration **
** Author: Olowookere, Oluwatosin Olawale **

twoway histogram employment_index || kdensity employment_index, name(Employment_index_hist, replace) // Hist for employment index created 

twoway histogram avg_income || kdensity avg_income, name(Income_index_hist, replace) // Hist for Average income per HH member

twoway (scatter employment_index avg_income) || (lfit employment_index avg_income), name(Scat_Plot_Emp_Inc, replace) // Scatter plot for both income and emp status

graph combine Employment_index_hist Income_index_hist Scat_Plot_Emp_Inc // Combine graph

graph save Graph "C:\Users\simona\Desktop\Simona_Projects_by_Oluwatosin\Plots\Employment_Income_Indices_1.gph", replace 

graph export "C:\Users\simona\Desktop\Simona_Projects_by_Oluwatosin\Plots\Employment_Income_Indices_1.pdf", as(pdf) replace




** Archived **
// twoway histogram employment_index_unbounded || kdensity employment_index_unbounded, name(Unbounded_Employment_status, replace)
// twoway histogram employment_index || kdensity employment_index, name(Bounded_0to1_Employment_status, replace)
//twoway (scatter Norm_emply_index avg_income) || (lfit Norm_emply_index avg_income), name(Scat_Plot_bounded_indx, replace)
//twoway (scatter employment_index_unbounded avg_income) || (lfit employment_index_unbounded avg_income), name(Scat_Plot_unbounded_indx, replace)
// graph combine Unbounded_Employment_status Bounded_0to1_Employment_status Scat_Plot_unbounded_indx Scat_Plot_bounded_indx

