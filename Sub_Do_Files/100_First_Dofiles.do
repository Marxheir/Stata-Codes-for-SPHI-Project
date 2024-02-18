*** Removing vars with zero observations *** 
*** Author: Olowookere, Oluwatosin Olawale ***

// Set the Working Directory 
cd C:\Users\simona\Desktop\Simona_Projects_by_Oluwatosin
pwd

// Load the data 
use "C:\Users\simona\Desktop\Simona_Projects_by_Oluwatosin\Preserved_Raw_Data\wave4_long_wave4_wide_1.dta", clear

// Viewing data
browse
describe



// Remove variables with all observation missing
foreach var of varlist _all{
	qui count if missing(`var')
	if r(N) == _N {
	di "Dropping variable:  `var'"
	drop `var'
}
}

// Remove unused variable informations

compress


drop if complete == 0 // Remove all units that are not yet interviwed

replace holder_id =  holder_id_ent if holder_id == . // Address missing ids with old ids 

