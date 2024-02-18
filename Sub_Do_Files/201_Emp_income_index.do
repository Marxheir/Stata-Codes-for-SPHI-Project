*** Creating Employment and Income Indices ***
*** Author: Olowookere, Oluwatosin Olawale ***


egen HH_size = count(holder_id), by(holder_id) // Creating HH size based on unique holder ids

egen HH_mem_adults = count(holder_id) if hh_mem_age >= 18, by(holder_id) // Creating var for adults HH memebers to be  


** Creating Employment Status Index 
bysort holder_id: egen employed_adults = total(do_work == 1 & hh_mem_age >= 18) // Sort the HH id and add up adult memebers who are employed
gen employment_index = employed_adults / HH_mem_adults // Generate employment index based on total number of HH adults employed divided by adults number
//replace employment_index = cond(employment_index < 0, 0, employment_index)
//replace employment_index = cond(employment_index > 1, 1, employment_index)




** Creating Income Index **
egen total_income = total(hh_mem_income), by(holder_id) // Calculate income within each HH
// HH size has been calculated previously

gen avg_income = total_income / HH_size^2  // To calculate average income per HH member adjusted for economics of scale
 
* Categorise income level*
// It is not clear what threshold to use to categoprise income
// egen median_income = median(hh_mem_income) // using median 
// di "Median Income: " median_income
// Using Quartile to categortise income level of average HH memeber income 
// xtile income_quartile = avg_income, nq(4)
// br avg_income income_quartile


// Drop all the temporary vars created from the data 
drop total_income employed_adults HH_mem_adults HH_size // min_empl_ind max_empl_ind median_income income_quartile





***** Archive *****


*** This Employment Index method is suspended for now ***
// For HH memebers who are government employees or contracted private employees
//gen Employment_scr = 0

// replace Employment_scr = 5 if (work_type == 1 | work_type == 2) & work_hours >= 30
// replace Employment_scr = 4 if (work_type == 1 | work_type == 2) & (work_hours >= 20 & work_hours < 30)

* Since the second line code above return zero, all govtment employees and private contractors work more than 30 hours 
// replace Employment_scr = 4 if work_type == 3 & work_hours >= 20 // Returns self emploed people with working hours beyond 20 hours

// replace Employment_scr = 4 if (work_type == 1 | work_type == 2) & (work_hours >= 20 & work_hours < 30)
// replace Employment_scr = 3 if (work_type == 1 | work_type == 2) & (work_hours < 20 | work_hours  30)



